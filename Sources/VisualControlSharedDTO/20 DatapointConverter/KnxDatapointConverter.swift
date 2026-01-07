//
//  KnxDatapointConverter.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 07.01.26.
//
//  Konvertierung von KNX-DPT-Typen in Array([UInt8], [UInt8], ...) und umgekehrt.
//  Der Datenaustausch mit dem Wienzierl BAOS erfolgt über einen Webservice basierend auf JSON.
//  Die vom BAOS empfangenen 8bit-Felder werden hier in die jeweiligen KNX-Daten konvertiert.
//  Ebenso in die andere Richtung werden die Werte aller möglichen Datentypen in 8bit-Felder
//  konvertiert, um sie so an das BAOS zu übergeben.
//  Zum besseren Handling für die Konvertierung sind Extensions für die erforderlichen Datentypen
//  angelegt, sodass die Kovertierung des Wertes einer Property direkt mit einem Aufruf des
//  gewünschten Typs erfolgt.
//  Bsp: let myValue: UInt16 = 65535; let convertValue = myValue.bytesKNXDPT7 liefert [255],[255]
//       convertValue.unsignedInt16FromKNXDPT7 liefert 65535


import Foundation

enum KnxDptType: String, Codable {
    case DPT01_Boolean
    case DPT05_1ByteUnsigned
    case DPT06_1ByteSigned
    case DPT07_2ByteUnsigned
    case DPT08_2ByteSigned
    case DPT09_2ByteFloat
    case DPT10_3ByteTime
    case DPT11_3ByteDate
    case DPT12_4ByteUnsigned
    case DPT13_4ByteSigned
    case DPT14_4ByteFloat
}

// KNXDPT01:
extension Bool {
    var byteKNXDPT1: [UInt8] { KnxDptConverter.boolToByteKNXDPT1(boolValue: self) }
}

// KNXDPT05:
extension UInt8 {
    var bytesKNXDPT5: [UInt8] { withUnsafeBytes(of: self, Array.init) }
}
// KNXDPT06:
extension Int8 {
    var bytesKNXDPT6: [UInt8] { withUnsafeBytes(of: self, Array.init) }
}
// KNXDPT07:
extension UInt16 {
    var bytesKNXDPT7: [UInt8] { withUnsafeBytes(of: self, Array.init) }
}
// KNXDPT08:
extension Int16 {
    var bytesKNXDPT8: [UInt8] { withUnsafeBytes(of: self, Array.init) }
}

// KNXDPT09:
@available(macOS 11.0, *)
extension Float16 {
    var bytesKNXDPT9: [UInt8] { KnxDptConverter.floatToByteKNXDPT9(floatValue: self) }
}

// KNXDPT10, DPT11, DPT19
extension Date {
    var bytesKNXDPT10: [UInt8] { KnxDptConverter.timeToByteKNXDPT10(time: self) }
    var bytesKNXDPT11: [UInt8] { KnxDptConverter.dateToByteKNXDPT11(date: self) }
    var bytesKNXDPT19: [UInt8] { KnxDptConverter.dateToByteKNXDPT19(date: self) }
}

// KNXDPT12:
extension UInt32 {
    var bytesKNXDPT12: [UInt8] { withUnsafeBytes(of: self, Array.init) }
}
// KNXDPT13:
extension Int32 {
    var bytesKNXDPT13: [UInt8] { withUnsafeBytes(of: self, Array.init) }
}
// KNXDPT14:
extension Float32 {
   var bytesKNXDPT14: [UInt8] { withUnsafeBytes(of: self, Array.init) }
}

@available(macOS 11.0, *)
extension Array<UInt8> {
    var boolFromKNXDPT1: Bool { KnxDptConverter.byteKNXDPT1ToBool(byteArray: self) }                  // KNXDPT01
    var unsignedInt8FromKNXDPT5: UInt8 { KnxDptConverter.byteKNXDPT5ToUInt8(byteArray: self) }        // KNXDPT05
    var signedInt8FromKNXDPT6: Int8 { KnxDptConverter.byteKNXDPT6ToUInt8(byteArray: self) }           // KNXDPT06
    var unsignedInt16FromKNXDPT7: UInt16 { KnxDptConverter.byteKNXDPT7ToUInt16(byteArray: self) }     // KNXDPT07
    var signedInt16FromKNXDPT8: Int16 { KnxDptConverter.byteKNXDPT8ToInt16(byteArray: self) }         // KNXDPT08
    var floatFromKNXDPT9: Float16 { KnxDptConverter.byteKNXDPT9ToFloat(byteArray: self) }             // KNXDPT09
    var timeFromKNXDPT10: Date { KnxDptConverter.byteKNXDPT10ToTime(byteArray: self) }                // KNXDPT10
    var timeComponentsFromKNXDPT10: (weekday: Int, hours: Int, minutes: Int, seconds: Int) { KnxDptConverter.byteKNXDPT10ToTimeComponents(byteArray: self) }
    var dateFromKNXDPT11: Date { KnxDptConverter.byteKNXDPT11ToDate(byteArray: self) }                //KNXDPT11
    var dateComponentsFromKNXDPT11: (day: Int, month: Int, year: Int) { KnxDptConverter.byteKNXDPT11ToDateComponents(byteArray: self) }
    var unsignedInt32FromKNXDPT12: UInt32 { KnxDptConverter.byteKNXDPT12ToUInt32(byteArray: self) }   // KNXDPT12
    var signedInt32FromKNXDPT13: Int32 { KnxDptConverter.byteKNXDPT13ToInt32(byteArray: self) }       // KNXDPT13
    var signedFloat32FromKNXDPT14: Float32 { KnxDptConverter.byteKNXDPT14ToFloat32(byteArray: self) } // KNXDPT14
    var dateAndTimeFromKNXDPT19: Date { KnxDptConverter.byteKNXDPT19ToDate(byteArray: self) }         // KNXDPT19
    var dateAndTimeComponentsFromKNXDPT19: KnxDptConverter.KNXDPT19DateAndTimeComponents { KnxDptConverter.byteKNXDPT19ToDateAndTimeComponents(byteArray: self) }
}

struct KnxDptConverter {
    
    struct KNXDPT19DateAndTimeComponents {
        var byte1: UInt8 = 0, byte2: UInt8 = 32, byte3: UInt8 = 0, byte4: UInt8 = 0
        var byte5: UInt8 = 0, byte6: UInt8 = 1, byte7: UInt8 = 1, byte8: UInt8 = 100
        var year: Int {
            get { return Int(byte8) + 1900 }
            set { byte8 = UInt8(newValue - 1900) }
        }
        var month: Int {
            get { return Int(byte7) }
            set { byte7 = UInt8(newValue) }
        }
        var dayOfMonth: Int {
            get { return Int(byte6) }
            set { byte6 = UInt8(newValue) }
        }
        var dayOfWeek: Int {
            get { return Int((byte5 & 224) >> 5) }
            set { byte5 = UInt8((newValue << 5) | hourOfDay) }
        }
        var hourOfDay: Int {
            get { return Int(byte5 & 31) }
            set { byte5 = UInt8((dayOfWeek << 5) | newValue) }
        }
        var minutes: Int {
            get { return Int(byte4) }
            set { byte4 = UInt8(newValue) }
        }
        var seconds: Int {
            get { return Int(byte3) }
            set { byte3 = UInt8(newValue) }
        }
    }


    /* ************************************ DPT01 Switch ******************************************* */
    static func boolToByteKNXDPT1(boolValue: Bool) -> [UInt8] {
        let valueTrue: [UInt8] = [UInt8(1)]
        let valueFalse: [UInt8] = [UInt8(0)]
        return boolValue == true ? valueTrue : valueFalse
    }

    static func byteKNXDPT1ToBool(byteArray: [UInt8]) -> Bool {
        let byteValue: UInt8 = byteArray[0]
        return byteValue == 1 ? true : false
    }

    /* ********************************* DPT05 UnsignedInt8 **************************************** */
    static func byteKNXDPT5ToUInt8(byteArray: [UInt8]) -> UInt8 {
        byteArray.withUnsafeBytes {$0.load(fromByteOffset: 0, as: UInt8.self)}
    }

    /* ********************************** DPT06 SignedInt8 ***************************************** */
    static func byteKNXDPT6ToUInt8(byteArray: [UInt8]) -> Int8 {
        byteArray.withUnsafeBytes {$0.load(fromByteOffset: 0, as: Int8.self)}
    }

    /* ********************************* DPT07 UnsignedInt16 *************************************** */
    static func byteKNXDPT7ToUInt16(byteArray: [UInt8]) -> UInt16 {
        byteArray.withUnsafeBytes {$0.load(fromByteOffset: 0, as: UInt16.self)}
    }

    /* ********************************** DPT08 SignedInt16 **************************************** */
    static func byteKNXDPT8ToInt16(byteArray: [UInt8]) -> Int16 {
        byteArray.withUnsafeBytes {$0.load(fromByteOffset: 0, as: Int16.self)}
    }

    /* ********************************* DPT09 Float 2Bytes **************************************** */
    @available(macOS 11.0, *)
    static func floatToByteKNXDPT9(floatValue: Float16) -> [UInt8] {
        let floatValueIsNegative: Bool = floatValue < 0 ? true : false
        let intValue = Int(abs(floatValue) * 100)
        var mantissa = intValue
        var exponent: UInt8 = 0
        while mantissa > 2047 {
            mantissa = mantissa / 2
            exponent = exponent + 1
        }
        var byte1 = UInt8(truncatingIfNeeded: mantissa)
        var byte2 = UInt8(truncatingIfNeeded: mantissa >> 8)
        if floatValueIsNegative {
            byte1 = (~byte1 + 1)
            byte2 = ((~byte2 << 5) + 1) >> 5
        }
        byte2 = byte2 | (exponent << 3)
        if floatValueIsNegative {
            byte2 = byte2 | 128
        }
        return [byte2, byte1]
    }

    @available(macOS 11.0, *)
    static func byteKNXDPT9ToFloat(byteArray: [UInt8]) -> Float16 {
        let byte1 = UInt16(byteArray[0])
        let byte2 = UInt16(byteArray[1])
        let bitWord = byte2 | (byte1 << 8)
        let floatValueIsNegative = bitWord & 32768 == 0 ? false : true
        let bits1To11 = (bitWord & UInt16(2047))
        var mantissa: UInt16 = 0
        if floatValueIsNegative {
            mantissa = (~(bits1To11 - 1) & UInt16(2047))
        }
        else {
            mantissa = bits1To11 & UInt16(2047)
        }
        let exponent = (bitWord & UInt16(30720)) >> 11
        var result = Float16(0.01 * Float(mantissa) * Float(exp2(CGFloat(exponent))))
        if floatValueIsNegative {
            result = -result
        }
        return result
    }

    /* *************************************** DPT10 Time ****************************************** */
    static func timeToByteKNXDPT10(time: Date) -> [UInt8] {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.hour, .minute, .second, .weekday], from: time)
        var hours: UInt8 = 0, minutes: UInt8 = 0, seconds: UInt8 = 0, weekday: UInt8 = 0
        if let compsHour = components.hour { hours = UInt8(compsHour) }
        if let compsMinute = components.minute { minutes = UInt8(compsMinute) }
        if let compsSeconds = components.second { seconds = UInt8(compsSeconds) }
        if let compsWeekday = components.weekday { weekday = compsWeekday == 1 ? 7 : UInt8(compsWeekday - 1) }
        let byte1: UInt8 = hours | weekday << 5
        let byte2: UInt8 = minutes
        let byte3: UInt8 = seconds
        return [byte1, byte2, byte3]
    }

    static func byteKNXDPT10ToTime(byteArray: [UInt8]) -> Date {
        let calendar = Calendar.current
        guard byteArray.count == 3 else {
            let invalidTime = calendar.date(bySettingHour: 0, minute: 0, second: 0, of: Date.init(timeIntervalSinceReferenceDate: 0))!
            return invalidTime
        }
        var dateAndTimeComponents = DateComponents()
        
        dateAndTimeComponents.hour = Int(byteArray[0] & 31)             // Bits1-5 Stunden
        dateAndTimeComponents.weekday = Int((byteArray[0] & 224) + 1)   // Bits6-8 Wochentag
        dateAndTimeComponents.minute = Int(byteArray[1])
        dateAndTimeComponents.second = Int(byteArray[2])
        dateAndTimeComponents.year = 2000
        dateAndTimeComponents.month = 1
        dateAndTimeComponents.day = 1
        
        let date: Date = Calendar.current.date(from: dateAndTimeComponents)!
        return date
    }

    static func byteKNXDPT10ToTimeComponents(byteArray: [UInt8]) -> (weekday: Int, hours: Int, minutes: Int, seconds: Int) {
        guard byteArray.count == 3 else {
            return (0, 0, 0, 0)
        }
        let hours: Int = Int(byteArray[0] & 31)             // Bits1-5 Stunden
        let weekday: Int = Int((byteArray[0] & 224) >> 5)   // Bits6-8 Wochentag
        let minutes: Int = Int(byteArray[1])
        let seconds: Int = Int(byteArray[2])
        
        return (weekday, hours, minutes, seconds)
    }

    /* *************************************** DPT11 Date ****************************************** */
    static func dateToByteKNXDPT11(date: Date) -> [UInt8] {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day, .month, .year], from: date)
        var day: UInt8 = 0, month: UInt8 = 0, year: UInt8 = 0
        if let compsDay = components.day { day = UInt8(compsDay) }
        if let compsMonth = components.month { month = UInt8(compsMonth) }
        if let compsYear = components.year { year = compsYear < 2000 ? UInt8(compsYear - 1900) : UInt8(compsYear - 2000) }
        let byte1: UInt8 = day
        let byte2: UInt8 = month
        let byte3: UInt8 = year
        return [byte1, byte2, byte3]
    }

    static func byteKNXDPT11ToDate(byteArray: [UInt8]) -> Date {
        guard byteArray.count == 3 else {
            var dateAndTimeComponents = DateComponents()
            dateAndTimeComponents.second = 0
            dateAndTimeComponents.minute = 0
            dateAndTimeComponents.hour = 0
            dateAndTimeComponents.weekday = 0
            dateAndTimeComponents.year = 2000
            dateAndTimeComponents.month = 1
            dateAndTimeComponents.day = 1
            let invalidDate: Date = Calendar.current.date(from: dateAndTimeComponents)!
            return invalidDate
        }
        var dateAndTimeComponents = DateComponents()
        dateAndTimeComponents.second = 0
        dateAndTimeComponents.minute = 0
        dateAndTimeComponents.hour = 0
        dateAndTimeComponents.weekday = 0
        dateAndTimeComponents.year = (Int(byteArray[2]) >= 90 && byteArray[2] <= 99) ? (Int(byteArray[2]) + 1900) : (Int(byteArray[2]) + 2000)
        dateAndTimeComponents.month = Int(byteArray[1])
        dateAndTimeComponents.day = Int(byteArray[0])
        let date: Date = Calendar.current.date(from: dateAndTimeComponents)!
        return date
    }

    static func byteKNXDPT11ToDateComponents(byteArray: [UInt8]) -> (day: Int, month: Int, year: Int) {
        guard byteArray.count == 3 else {
            return (1, 1, 2000)
        }
        let day: Int = Int(byteArray[0])
        let month: Int = Int(byteArray[1])
        let year: Int = (Int(byteArray[2]) >= 90 && byteArray[2] <= 99) ? (Int(byteArray[2]) + 1900) : (Int(byteArray[2]) + 2000)
        return (day, month, year)
    }

    /* *********************************** DPT12 UnsignedInt32 ************************************* */
    static func byteKNXDPT12ToUInt32(byteArray: [UInt8]) -> UInt32 {
        byteArray.reversed().withUnsafeBytes {$0.load(fromByteOffset: 0, as: UInt32.self)}
    }

    /* ************************************ DPT13 SignedInt32 ************************************** */
    static func byteKNXDPT13ToInt32(byteArray: [UInt8]) -> Int32 {
        byteArray.withUnsafeBytes {$0.load(fromByteOffset: 0, as: Int32.self)}
    }

    /* ************************************** DPT14 Float32 **************************************** */
    static func byteKNXDPT14ToFloat32(byteArray: [UInt8]) -> Float32 {
        byteArray.withUnsafeBytes {$0.load(fromByteOffset: 0, as: Float32.self)}
    }

    /* ************************************* DPT19 Time&Date *************************************** */
    static func dateToByteKNXDPT19(date: Date) -> [UInt8] {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day, .month, .year, .weekday, .hour, .minute, .second], from: date)
        var timeAndDateComponents = KNXDPT19DateAndTimeComponents()
        if let compsDay = components.day { timeAndDateComponents.dayOfMonth = compsDay}
        if let compsMonth = components.month { timeAndDateComponents.month = compsMonth}
        if let compsYear = components.year { timeAndDateComponents.year = compsYear}
        if let compsWeekday = components.weekday { timeAndDateComponents.dayOfWeek = compsWeekday == 1 ? 7 : compsWeekday - 1 }
        if let compsHour = components.hour { timeAndDateComponents.hourOfDay = compsHour}
        if let compsMinute = components.minute { timeAndDateComponents.minutes = compsMinute}
        if let compsSecond = components.second { timeAndDateComponents.seconds = compsSecond}
        let byte1: UInt8 = timeAndDateComponents.byte1
        let byte2: UInt8 = timeAndDateComponents.byte2
        let byte3: UInt8 = timeAndDateComponents.byte3
        let byte4: UInt8 = timeAndDateComponents.byte4
        let byte5: UInt8 = timeAndDateComponents.byte5
        let byte6: UInt8 = timeAndDateComponents.byte6
        let byte7: UInt8 = timeAndDateComponents.byte7
        let byte8: UInt8 = timeAndDateComponents.byte8
        return [byte1, byte2, byte3, byte4, byte5, byte6, byte7, byte8]
    }

    static func byteKNXDPT19ToDate(byteArray: [UInt8]) -> Date {
        guard byteArray.count == 8 else {
            var dateAndTimeComponents = DateComponents()
            dateAndTimeComponents.second = 0
            dateAndTimeComponents.minute = 0
            dateAndTimeComponents.hour = 0
            dateAndTimeComponents.weekday = 0
            dateAndTimeComponents.year = 2000
            dateAndTimeComponents.month = 1
            dateAndTimeComponents.day = 1
            let invalidDate: Date = Calendar.current.date(from: dateAndTimeComponents)!
            return invalidDate
        }
        var dateAndTimeComponents = DateComponents()
        dateAndTimeComponents.second = Int(byteArray[2])
        dateAndTimeComponents.minute = Int(byteArray[3])
        dateAndTimeComponents.hour = Int(byteArray[4] & 31)
        dateAndTimeComponents.weekday = Int(byteArray[4] & 224)
        dateAndTimeComponents.day = Int(byteArray[5])
        dateAndTimeComponents.month = Int(byteArray[6])
        dateAndTimeComponents.year = (Int(byteArray[7]) + 1900)
        let date: Date = Calendar.current.date(from: dateAndTimeComponents)!
        return date
    }

    static func byteKNXDPT19ToDateAndTimeComponents(byteArray: [UInt8]) -> KNXDPT19DateAndTimeComponents {
        guard byteArray.count == 8 else {
            return KNXDPT19DateAndTimeComponents()
        }
        var dateAndTime = KNXDPT19DateAndTimeComponents()
        dateAndTime.byte1 = UInt8(byteArray[0])
        dateAndTime.byte2 = UInt8(byteArray[1])
        dateAndTime.byte3 = UInt8(byteArray[2])
        dateAndTime.byte4 = UInt8(byteArray[3])
        dateAndTime.byte5 = UInt8(byteArray[4])
        dateAndTime.byte6 = UInt8(byteArray[5])
        dateAndTime.byte7 = UInt8(byteArray[6])
        dateAndTime.byte8 = UInt8(byteArray[7])
        return (dateAndTime)
    }
}

// Funktionserweiterung für ein Array mit Intergerzahlen
// gibt true zurück, wenn alle Elemente des Arrays in fortlaufender Reihenfolge sind:
// [1, 2, 3, 4, 5] -> true
// [1, 2, 3, 5, 6] -> false
extension Array where Element == Int {
    func numbersAreConsecutive() -> Bool {
        for (num, nextNum) in zip(self, dropFirst())
            where (nextNum - num) != 1 { return false }
        return true
    }
}


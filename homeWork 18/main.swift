//
//  main.swift
//  homeWork 18
//
//  Created by Seroj on 02.07.22.
//

import Foundation

/* homeWork 1
    . Ստեղծել struct PhoneNumber անունով (հետևյալ փրոփրտիներով code: String number: String)
    որը պետք է ունենա հետևյալ init-ները`
    - init?(code: String, number: String) code և number չեն կարող լինել դատարկ
    -init?(number: String)  number  չեն կարող լինել դատարկ code = “+374”*/

struct PhoneNumber {
    var code: String
    var number: String

    init?(code: String, number: String) {
        if code.isEmpty || number.isEmpty {
            return nil
        }
        self.code = code
        self.number = number

        self.number.insert(" ", at: number.index(self.number.startIndex, offsetBy: 2))
    }

    init?(number: String) {
        if number.isEmpty {
            return nil
        }
        self.init(code: "+374", number: number)
    }
}

/* homeWork 2
    4. Ստեղծել Class CallManager անունով (հետևյալ փրոփրտիներով callFrom: PhoneNumber, callTo: PhoneNumber)
    որը պետք է ունենա հետևյալ init-ները`
    - init?(callFrom: PhoneNumber?, callTo: PhoneNumber?) callFrom և callTo չեն կարող լինել nil
    - Init?(callFrom: String, callTo: String) code- ի երկարությունը 4 է,  callFrom և callTo չեն կարող լինել դատարկ*/

class CallManager {
    var callFrom: PhoneNumber
    var callTo: PhoneNumber

    func getCodeAndNumber(_ phoneNumber: String) -> PhoneNumber {

        let myIndex = phoneNumber.index(phoneNumber.startIndex, offsetBy: 4)

        let cod = String(phoneNumber[phoneNumber.startIndex..<myIndex])
        let num = String(phoneNumber[myIndex...phoneNumber.index(before: phoneNumber.endIndex)])

            return PhoneNumber(code: cod, number: num)!
       }

    init?(callFrom: PhoneNumber?, callTo: PhoneNumber?) {
        if callFrom == nil || callTo == nil {
            return nil
        }
        self.callFrom = callFrom!
        self.callTo = callTo!
    }

    init?(callFrom: String, callTo: String) {

        if callFrom.hasPrefix("+") && callFrom.count > 0, callTo.hasPrefix("+") && callTo.count > 0 {

            self.callFrom = PhoneNumber(code: callFrom, number: callFrom)!
            self.callTo = PhoneNumber(code: callTo, number: callTo)!

            self.callFrom = getCodeAndNumber(callFrom)
            self.callTo = getCodeAndNumber(callTo)

        } else {
            return nil
        }
    }
}

let obj = CallManager(callFrom: "+37633445566", callTo: "+34599008877")

if let obj = obj {
    print(obj.callTo)
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/* homeWork 1
    . Ստեղծել struct PhoneNumber անունով (հետևյալ փրոփրտիներով code: String number: String)
    որը պետք է ունենա հետևյալ init-ները`
    - init?(code: String, number: String) code և number չեն կարող լինել դատարկ
    -init?(number: String)  number  չեն կարող լինել դատարկ code = “+374”*/

struct PhoneNumber {
    var code: String
    var number: String

    init?(code: String, number: String) {
        if code.isEmpty || number.isEmpty {
            return nil
        }
        self.code = code
        self.number = number

        self.number.insert(" ", at: number.index(self.number.startIndex, offsetBy: 2))
    }

    init?(number: String) {
        if number.isEmpty {
            return nil
        }
        self.init(code: "+374", number: number)
    }
}

/* homeWork 2
    4. Ստեղծել Class CallManager անունով (հետևյալ փրոփրտիներով callFrom: PhoneNumber, callTo: PhoneNumber)
    որը պետք է ունենա հետևյալ init-ները`
    - init?(callFrom: PhoneNumber?, callTo: PhoneNumber?) callFrom և callTo չեն կարող լինել nil
    - Init?(callFrom: String, callTo: String) code- ի երկարությունը 4 է,  callFrom և callTo չեն կարող լինել դատարկ
*/

class CallManager {
    var callFrom: PhoneNumber
    var callTo: PhoneNumber

    init?(callFrom: PhoneNumber?, callTo: PhoneNumber?) {
        if callFrom == nil || callTo == nil {
            return nil
        }
        self.callFrom = callFrom!
        self.callTo = callTo!
    }

    init?(callFrom: String, callTo: String) {

        if callFrom.hasPrefix("+") && callFrom.count == 12, callTo.hasPrefix("+") && callTo.count == 12 {

            self.callFrom = PhoneNumber(code: String(callFrom.prefix(4)), number: String(callFrom.suffix(8)))!
            self.callTo = PhoneNumber(code: String(callTo.prefix(4)), number: String(callTo.suffix(8)))!

        } else {
            return nil
        }
    }
}

let obj = CallManager(callFrom: "+37633445566", callTo: "+34599008877")

if let obj = obj {
    print(obj.callTo)
}

///////////////////////////////////////////////////////////////////////////////////

/* homeWork 1
    . Ստեղծել struct PhoneNumber անունով (հետևյալ փրոփրտիներով code: String number: String)
    որը պետք է ունենա հետևյալ init-ները`
    - init?(code: String, number: String) code և number չեն կարող լինել դատարկ
    -init?(number: String)  number  չեն կարող լինել դատարկ code = “+374”*/

struct PhoneNumber {
    var code: String
    var number: String

    init?(code: String, number: String) {
        if code.isEmpty || number.isEmpty {
            return nil
        }
        self.code = code
        self.number = number

        self.number.insert(" ", at: number.index(self.number.startIndex, offsetBy: 2))
    }

    init?(number: String) {
        if number.isEmpty {
            return nil
        }
        self.init(code: "+374", number: number)
    }
}

/* homeWork 2
    4. Ստեղծել Class CallManager անունով (հետևյալ փրոփրտիներով callFrom: PhoneNumber, callTo: PhoneNumber)
    որը պետք է ունենա հետևյալ init-ները`
    - init?(callFrom: PhoneNumber?, callTo: PhoneNumber?) callFrom և callTo չեն կարող լինել nil
    - Init?(callFrom: String, callTo: String) code- ի երկարությունը 4 է,  callFrom և callTo չեն կարող լինել դատարկ*/

class CallManager {
    var callFrom: PhoneNumber
    var callTo: PhoneNumber

    func getCode(_ phoneNumber: String) -> String {

        let myIndex = phoneNumber.index(phoneNumber.startIndex, offsetBy: 4)
        let cod = String(phoneNumber[phoneNumber.startIndex..<myIndex])

        return cod
       }

    func getNumber(_ phoneNumber: String) -> String {

        let myIndex = phoneNumber.index(phoneNumber.startIndex, offsetBy: 4)
        let num = String(phoneNumber[myIndex...phoneNumber.index(before: phoneNumber.endIndex)])

            return num
       }

    init?(callFrom: PhoneNumber?, callTo: PhoneNumber?) {
        if callFrom == nil || callTo == nil {
            return nil
        }
        self.callFrom = callFrom!
        self.callTo = callTo!
    }

    init?(callFrom: String, callTo: String) {

        if callFrom.hasPrefix("+") && callFrom.count > 0, callTo.hasPrefix("+") && callTo.count > 0 {

            self.callFrom = PhoneNumber(code: callFrom, number: callFrom)!
            self.callTo = PhoneNumber(code: callTo, number: callTo)!

            self.callFrom = PhoneNumber(code: getCode(callFrom), number: getNumber(callFrom))!
            self.callTo = PhoneNumber(code: getCode(callTo), number: getNumber(callTo))!

        } else {
            return nil
        }
    }
}

let obj = CallManager(callFrom: "+37633445566", callTo: "+34599008877")

if let obj = obj {
    print(obj.callFrom)
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/* homeWork 1
    . Ստեղծել struct PhoneNumber անունով (հետևյալ փրոփրտիներով code: String number: String)
    որը պետք է ունենա հետևյալ init-ները`
    - init?(code: String, number: String) code և number չեն կարող լինել դատարկ
    -init?(number: String)  number  չեն կարող լինել դատարկ code = “+374”*/

struct PhoneNumber {
    var code: String
    var number: String

    init?(code: String, number: String) {
        if code.isEmpty || number.isEmpty {
            return nil
        }
        self.code = code
        self.number = number

        self.number.insert(" ", at: number.index(self.number.startIndex, offsetBy: 2))
    }

    init?(number: String) {
        if number.isEmpty {
            return nil
        }
        self.init(code: "+374", number: number)
    }
}

/* homeWork 2
    4. Ստեղծել Class CallManager անունով (հետևյալ փրոփրտիներով callFrom: PhoneNumber, callTo: PhoneNumber)
    որը պետք է ունենա հետևյալ init-ները`
    - init?(callFrom: PhoneNumber?, callTo: PhoneNumber?) callFrom և callTo չեն կարող լինել nil
    - Init?(callFrom: String, callTo: String) code- ի երկարությունը 4 է,  callFrom և callTo չեն կարող լինել դատարկ*/

class CallManager {
    var callFrom: PhoneNumber
    var callTo: PhoneNumber

    init?(callFrom: PhoneNumber?, callTo: PhoneNumber?) {
        if callFrom == nil || callTo == nil {
            return nil
        }
        self.callFrom = callFrom!
        self.callTo = callTo!
    }

    init?(callFrom: String, callTo: String) {

        if callFrom.hasPrefix("+") && callFrom.count > 0, callTo.hasPrefix("+") && callTo.count > 0 {

            let callFromCodeIndex = callFrom.index(callFrom.startIndex, offsetBy: 4)
            let callToCodeIndex = callTo.index(callTo.startIndex, offsetBy: 4)

            self.callFrom = PhoneNumber(code: String(callFrom[callFrom.startIndex..<callFromCodeIndex]), number: String(callFrom[callFromCodeIndex...callFrom.index(before: callFrom.endIndex)]))!

            self.callTo = PhoneNumber(code: String(callTo[callTo.startIndex..<callToCodeIndex]), number: String(callTo[callToCodeIndex...callTo.index(before: callTo.endIndex)]))!

        } else {
            return nil
        }
    }
}

let obj = CallManager(callFrom: "+37633445566", callTo: "+34599008877")

if let obj = obj {
    print(obj.callTo)
}

/////////////////////////////////////////////////////////////////////////////////////////////////
//
//
////var str = "Stepanyan"
////
////let a = str.prefix(4)
////let b = str.suffix(5)
////let b1 = ""
////let numberIndex = str.index(str.startIndex, offsetBy: 4)
////print(str[str.startIndex..<numberIndex])
////print(str[numberIndex...str.index(before: str.endIndex)])
////
////let a1 = str[numberIndex]
////print(a1)
////print(a)
////print(b)
////print(str)
//
////
////let callFromIndex = callFrom.index(callFrom.startIndex, offsetBy: 4)
////let callToIndex = callTo.index(callTo.startIndex, offsetBy: 4)
////
////self.callFrom = PhoneNumber(code: callFrom[callFrom.startIndex..<callFromIndex], number: callFrom[callFromIndex...callFrom.index(before: callFrom.endIndex)])!
////self.callTo = PhoneNumber(code: callTo[callTo.startIndex..<callToIndex], number: callTo[callToIndex...callTo.index(before: callTo.endIndex)])!
//var str1 = String()
//
//

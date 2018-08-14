//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
//str += "!"
//print(str)
//
//var xing = "zhao";
//print(xing);
//

//var numberOfStoplight = "Four"
//var numberOfStoplight: Int = 4
//let numberOfStoplight: Int = 4

//numberOfStoplight += 2
//
//var population: Int
//
//population = 4322
//
//let townName: String = "KnowHere"
//
//let townDescription = "\(townName) has a population of \(population) and \(numberOfStoplight) stoplights"
//
//print(townDescription)
//
//var population: Int = 5422
//var message: String
////if population<1000{
////    message = "\(population) is small town"
////}else{
////    message = "\(population) is pretty big"
////}
//var hasPostOffice: Bool = true
//
//
//
//if !hasPostOffice{
//    print("Where do we buy stamps?")
//}
//
//
//message = population < 1000 ? "\(population) is a small town" : "\(population) is pretty big"
//print(message)
//

//print("the maximum Int Value is \(Int.max)")
//print("The minmum int value is \(Int.min)")
//
//print("the maximum Int Value for a 32-bit integer is \(Int32.max)")
//print("The minmum int value for a 32-bit integer is \(Int32.min)")
//
//print("the maximum UInt Value is \(UInt.max)")
//print("The minmum Uint value is \(UInt.min)")
//
//
//print("the maximum Int Value for a 32-bit integer is \(UInt32.max)")
//print("The minmum int value for a 32-bit integer is \(UInt32.min)")
//
//let numberOfProple: UInt = 40
//let vlumeAdjustment: Int32 = -1000
//
//
//print(10/3)
//
//
//let y:Int8 = 120;
//let z = y &+ 10
//
//let a: Int16 = 200
//let b: Int8 = 50
//let c = a + Int16(b)
//
//let d1 = 1.1
//let d2: Double = 1.1
//let f1: Float = 100.3
//
//print(10.0 + 11.4)
//print(11.0 / 3.0)
//
//
//if (d1 == d2) {
//    print("d1 and d2 are the same")
//}
//
//
//print("d1 + 0.1 is \(d1 + 0.1)")
//if d1 + 0.1 == 1.2 {
//    print("d1 + 0.1 is equal to 1.2")
//}

//var statusCode: Int = 404
//var errorString: String = "the request failed \(statusCode)"
//switch statusCode{
////case 400:
////    errorString = "Bad requrest"
////case 401:
////    errorString = "unathorized"
////case 403:
////    errorString = "Forbidden"
////case 404:
////    errorString = "not found"
////    default: errorString = "none"
//
//case 400, 401, 403, 404:
//    errorString = "There was something wrong with requrest"
//    fallthrough
//default:
//    errorString += " please review the requrest an try again"
//}
//print(errorString)

//
//switch statusCode{
//case 100, 101:
//    errorString += "Information , \(statusCode)"
//case 204:
//    errorString += "successful but no connect, \(statusCode)"
//case 300...307:
//    errorString += "redirction \(statusCode)"
//case 400...417:
//    errorString += "client error, \(statusCode)"
//case 500...505:
//    errorString += "server error, \(statusCode)"
//default:
//    errorString = "unknow. please review the requrest and try again"
//}
//

var statusCode: Int = 204
var errorString: String = "the requrest failed with the error"

switch statusCode{
case 100,101:
    errorString += "successful but not connect, 204"
case 204:
    errorString += "Successful but no connect, 204"
case 300...307:
    errorString += "redirection, \(statusCode)."
default:
    errorString += "Unexpected error encountered"
}

print(errorString)



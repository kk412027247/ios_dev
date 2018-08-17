//: Playground - noun: a place where people can play

import Cocoa

var errorCodeString: String?
errorCodeString = "404"
//print(errorCodeString)

//if errorCodeString != nil {
//    let theError = errorCodeString!
//    print(theError)
//}

if let theError = errorCodeString, let errorCodeInteger = Int(theError) {
//    print(theError)
    
        print("\(theError): \(errorCodeInteger)")
   
}

var errorDescription: String?

if let theError = errorCodeString ,let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
    errorDescription = "\(errorCodeInteger + 200)"
}

var upCaseErrorDescription = errorDescription?.uppercased()
errorDescription

upCaseErrorDescription?.append(" PLEASE TRY AGAIN")
upCaseErrorDescription

//let description: String
//if let errorDescription = errorDescription{
//    description = errorDescription
//} else {
//    description = "No error"
//}

let description = errorDescription ?? "No error"


description

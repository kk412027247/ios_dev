import Cocoa

//var str = "Hello, playground"
func printGreeting() ->Void{
    print("Hello, playground.")
}
printGreeting()

func printPersonalGreeting(name: String){
    print("Hello \(name), welcome to your playground.")
}

printPersonalGreeting(name: "Matt")

//func divisionDescriptionFor(numerator: Double, denimator: Double){
//    print("\(numerator) divided by \(denimator) equals \(numerator / denimator)")
//}
//
//divisionDescriptionFor(numerator: 9.0, denimator: 3.0)
//

//func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation: String = "."){
//    print("\(numerator) divided by \(denominator) equlas \(numerator / denominator)\(withPunctuation)")
//}
//
//divisionDescriptionFor(numerator: 9.0, denominator: 9.0)
//divisionDescriptionFor(numerator: 9.0, denominator: 9.0, withPunctuation: "!")

var error = "The request failed:"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String){
    if code == 400 {
        errorString += " bab request."
    }
}

appendErrorCode(400, toErrorString: &error)
print(error)


func divisionDescriptionFor(_ numerator: Double,_ denominator: Double,_ punctuation: String = ".") -> String{
    return "\(numerator) divided by \(denominator) equals \(numerator/denominator)\(punctuation)"
}
print(divisionDescriptionFor(3.0, 3.0))
print(divisionDescriptionFor(3.0, 3.0, "!"))

func areaOfTriangleWith(_ base: Double, _ height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator/2
    }
    return divide()
}

areaOfTriangleWith(3.0, 5.0)

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds:[Int]){
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0{
            evens.append(number)
        }else{
           odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [10, 1,3,4,57,43,84,27,156,111]
let theSortednumbers = sortedEvenOddNumbers(aBunchOfNumbers)
theSortednumbers
print ("The even numbers are: \(theSortednumbers.evens); the odd numbers are: \(theSortednumbers.odds)")

func grabMiddleName(_ name:(String, String?, String))->String?{
    return name.1
}
let middleName = grabMiddleName(("Matt", nil, "Mathias"))

if let theName = middleName {
    print(theName)
}

func greetByMiddleName(_ name:(first: String, middle: String?, last: String)){
    guard let middleName = name.middle else{
      print("Hey There!")
        return
    }
    print("Hey \(middleName)")
}

greetByMiddleName(("Matt", "Danger", "Mathias"))

let evenOddFunction: ([Int]) -> ([Int],[Int]) = sortedEvenOddNumbers
evenOddFunction(aBunchOfNumbers)



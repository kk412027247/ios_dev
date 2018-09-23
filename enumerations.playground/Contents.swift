import Cocoa


enum TextAlignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

//var alignment: TextAlignment = TextAlignment.left

var alignment = TextAlignment.left

alignment = .right

alignment = .justify

print(TextAlignment.left.rawValue)
print(TextAlignment.right.rawValue)
print(TextAlignment.center.rawValue)
print(TextAlignment.justify.rawValue)



if alignment == .right {
    print("we should right-align the text!")
}

//var alignment = TextAlignment.leftjustify

switch alignment{
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aliened")
case .justify:
    print("justified")
}

//let myRawValue = 20
//
//if let myAlingment = TextAlignment(rawValue: myRawValue){
//    print("successfully converted \(myRawValue) into a TextAlignment")
//}




enum ProgramingLanguage: String {
    case swift
    case objectiveC = "objective-c"
    case c = "c"
    case cpp = "c++"
    case java = "java"
}

let myFavoriteLanguage = ProgramingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage)")

enum Lightbulb{
    case on
    case off
    func surfaceTemperature(forAmbientTemperature ambient: Double)->Double{
        switch self{
            case .on:
                return ambient + 150.0
            
            case .off:
                return ambient
        }
    }
    mutating func toggle(){
        switch self{
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bulb = Lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

enum ShapeDimensions{
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    func area()-> Double{
        switch self{
        case let .square(side: side):
            return side * side
        case let .rectangle(width:w, height:h):
            return w * h
        case .point:
            return 0
        }
       
    }
}
    

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point

print ("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("rectangle's area = \(pointShape.area())")

enum FamilyTree{
    case noKnownParents
    indirect case oneKnownParent(name: String, acestors: FamilyTree)
    indirect case twoKnowParents(fatherName: String, fatherAncestors: FamilyTree,
        motherName:String, motherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.twoKnowParents(
    fatherName: "Fred Sr.",
    fatherAncestors: .oneKnownParent(name: "Beth", acestors: .noKnownParents),
    motherName: "Marsha",
    motherAncestors: .noKnownParents
)

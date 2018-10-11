import Cocoa

struct Point: Equatable, Comparable {
    let x: Int
    let y: Int
    
    static func == (lhs: Point, rhs: Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
    
    static func < (lhs:Point, rhs: Point) -> Bool {
        return (lhs.x < rhs.x) && (lhs.y < rhs.y)
    }
}

let a = Point(x:3, y:4)
let b = Point(x:3, y:4)

let abEqual = (a == b)

let abNotEqual = (a != b)

let c = Point(x:2, y:6)
let d = Point(x:3, y:7)

let cdEqual = (c == d)
let cLessThanD = (c < d)

let cLessThanEqualD = (c <= d)
let cGreaterThanD = (c > d)
let cGreaterThanEqualD = (c >= d)

class Person {
    var name: String
    weak var spouse: Person?
    
    init(name: String, spouse: Person?){
        self.name = name
        self.spouse = spouse
    }
}

let matt = Person(name: "Maat", spouse: nil)
let drew = Person(name: "Drew", spouse: nil)

infix operator +++

func +++(lhs: Person, rhs: Person){
    lhs.spouse = rhs
    rhs.spouse = lhs
}

matt +++ drew
matt.spouse?.name
drew.spouse?.name

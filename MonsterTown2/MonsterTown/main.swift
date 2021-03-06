import Foundation

var myTown = Town()
let myTownSize = myTown.townSize
print(myTownSize)
print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")
myTown.changePopulation(by: 1000000)
myTown.printDescription()

let genericMonster = Monster()
genericMonster.town = myTown
genericMonster.terrorizeTown()

class Zombie: Monster {
    class var spookyNoise: String{
        return "Brains..."
    }
    var walksWithLimp = true
    final override func terrorizeTown(){
        town?.changePopulation(by: -10)
        super.terrorizeTown()
    }
    class func makeSpookyNoise() -> String {
        return "Brains..."
    }
    internal var isFallingApart = false
}

//class ZombieBoss: Zombie{
//    override func terrorizeTown(){
//        print("terrorizing town...")
//    }
//}

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

struct Square{
    static func numberofSide()->Int{
        return 4
    }
}


let sides = Square.numberofSide()
let spookyNoise = Zombie.makeSpookyNoise()

class GiantZombie: Zombie {
    override class func makeSpookyNoise() -> String {
        return "ROAR!"
    }
}

print(sides)
print(spookyNoise)
print(GiantZombie.makeSpookyNoise())

func greet(to name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

let personalGreeting = greet(to: "Matt", withGreeting: "Hellom,")
print(personalGreeting)


let bool: Bool = true
print(bool)

//func gretting(forName name: String) -> (String) -> String{
//    func greeting(_ greeting: String) -> String {
//        return "\(greeting) \(name)"
//    }
//    return greeting
//}
//print(gretting(forName: "Tom")("hello"))


func gretting(_ greeting: String) -> (String) -> String{
    return{ (name: String) -> String in
        return "\(greeting) \(name)"
    }
}

print(gretting("Tom")("hello"))

struct Person{
    var firstName = "Matt"
    var lastName = "Mathias"

    mutating func changeTo(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
}

var P = Person()

//let changeName = Person.changeTo
//let changeNameFromMattTo = changeName(P)
//
//Partial application of 'mutating' method is not allowed; calling the function has undefined behavior and will be an error in future Swift versions

P.changeTo(firstName: "John", lastName: "Gallagher")

print(P.firstName)

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500

print("Victim pool: \(fredTheZombie.victimPool); population: \(String(describing: fredTheZombie.town?.population))")

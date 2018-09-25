import Foundation

var myTown = Town(population:10, stoplights:6)

myTown?.printDescription()
let myTownSize = myTown?.townSize
print(myTownSize ?? "nothing")
print("Population: \(String(describing: myTown?.population)), number of stoplights: \(String(describing: myTown?.numberOfStoplights))")
myTown?.changePopulation(by: 1000000)
myTown?.printDescription()

let genericMonster = Monster(town: myTown,monsterName:"Monster")
genericMonster.town = myTown
genericMonster.terrorizeTown()



var fredTheZombie:Zombie? = Zombie(limp:true,fallingApart:true,town:myTown, monsterName:"Fred")
fredTheZombie?.town = myTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

var convenientZombie = Zombie(limp: true, fallingApart: false)



print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")
fredTheZombie?.victimPool = 500

print("Victim pool: \(String(describing: fredTheZombie?.victimPool)); population: \(String(describing: fredTheZombie?.town?.population))")



fredTheZombie = nil

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



P.changeTo(firstName: "John", lastName: "Gallagher")

print(P.firstName)


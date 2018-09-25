import Cocoa

var str = "Hello, playground"
var playgroundGreeting = str
playgroundGreeting += "! How are you today?"
str

class GreekGod{
    var name: String
    init(name: String){
        self.name = name
    }
}

let hecate = GreekGod(name:"Hecate")
let anotherHecate = hecate

anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name

struct Pantheon{
    var chiefGod: GreekGod
}

let pantheon = Pantheon(chiefGod: hecate)

let zeus = GreekGod(name: "Zeus")
//Pantheon.chiefGod = zeus

zeus.name = "Zeus Jr."
zeus.name


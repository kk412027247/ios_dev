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

pantheon.chiefGod.name
let greekPantheon = pantheon
hecate.name = "Trivia"
greekPantheon.chiefGod.name

let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]

let godsCopy = gods
gods.last?.name = "Jupiter"
gods
godsCopy

fileprivate class IntArrayBuffer{
    var storage: [Int]
    
    init(){
        storage = []
    }
    
    init(buffer: IntArrayBuffer){
        storage = buffer.storage
    }
}

struct IntArray {
    private var buffer: IntArrayBuffer
    
    init(){
        buffer = IntArrayBuffer()
    }
    
    func describe(){
        print(buffer.storage)
    }
    
    
    private mutating func copyIfNeeded(){
        if !isKnownUniquelyReferenced(&buffer){
            print("Making a copy of \(buffer.storage)")
            buffer = IntArrayBuffer(buffer: buffer)
        }
    }
    
    func insert(_ value: Int, at index: Int){
        buffer.storage.insert(value, at: index)
    }
    
    func append(_ value:Int){
        buffer.storage.append(value)
    }
    
    func remove(at index: Int){
        buffer.storage.remove(at: index)
    }
}

var integers = IntArray()
integers.append(1)
integers.append(2)
integers.append(4)
integers.describe()
print("copying integers to ints")
var ints = integers
print("inserting into ints")
ints.insert(3, at: 2)
integers.describe()

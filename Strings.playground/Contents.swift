//: Playground - noun: a place where people can play

import Cocoa

let playground = "Hello, playground"

var mutablePlayground = "hello, mutable playground"
mutablePlayground += "!"

// swift 3
for c: Character in mutablePlayground.characters {
    print("\(c)")
}

// swift 4
for char in mutablePlayground {
    print(char)
}

let oneCoolDude = "\u{1f60e}"
let aAcute = "\u{0061}\u{0301}"

for scalar in playground.unicodeScalars{
    print("\(scalar.value)")
}

let aAcutePrecomposed = "\u{00e1}"

let b = (aAcute == aAcutePrecomposed)

print(aAcute.count)

let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]
let range = start...end
let firstFive = playground[range]

let empty = ""


//: Playground - noun: a place where people can play

import Cocoa


var shields = 5
var blasterOverheating = false
var blasterFireCount = 0
var spaceDemosDestroyed = 0

while shields > 0{

    if spaceDemosDestroyed >= 100 {
        print("you beat the game")
        break
    }

    if blasterOverheating{
        print("Blasters are overheated! cooldown initiated")
        sleep(5)
        print("blasters ready to fire")
        blasterFireCount = 0
    }

    if blasterFireCount > 100 {
        blasterOverheating = true
        continue
    }
    print("fire blasters")

    blasterFireCount += 1
    spaceDemosDestroyed += 1
}






























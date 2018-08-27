//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//var bucketList: Array<String>
//var bucketList:[String] = ["Climb Mt. Everst"]
//var bucketList  = ["Climb Mt. Everst"]
//bucketList.append("Fly hot air ballon to Fiji")
//bucketList.append("Watch the Lord of rings trilogy in one day")
//bucketList.append("Go on a walkabout")
//bucketList.append("Scuba dice in Great Bulue Hole")
//bucketList.append("Find a triple rainbow")
//

var bucketList = ["Climb Mt. Everest"]
var newItems = [
                "Fly hot air balloon to Fiji",
                "Watch the Lord of Rings trilogy in one day",
                "Go on a walkabout",
                "Scuba dive in the Great Blue Hole",
                "Find a triple rainbow"
]
//for item in newItems{
//    bucketList.append(item)
//}

bucketList += newItems

bucketList.remove(at: 2)
bucketList
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Toboggan accross Alaska", at: 2)
bucketList

var myronsList = [
     "Climb Mt. Kilimanjaro",
    "Fly hot air balloon to Fiji",
     "Toboggan accross Alaska",
     "Go on a walkabout in Australia",
     "Scuba dive in the Great Blue Hole",
     "Find a triple rainbow",
]

let equal = (bucketList == myronsList)

let lunches = [
    "Cheeseburger",
    "Veggie Pizza",
    "Chicken Caesar Salad",
    "Black Bean Burrito",
    "Falafel Wrap"
]

var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]

let isEmpty = toDoList.isEmpty

var _toDoList: [String] = []
for item in toDoList{
    _toDoList.insert(item, at: 0)
}

_toDoList


bucketList.index(of: "1Fly hot air balloon to Fiji")










import Cocoa

//var str = "Hello, playground"

var grocerBag = Set<String>()

grocerBag.insert("Apples")
grocerBag.insert("Oranges")
grocerBag.insert("Pineapple")

for food in grocerBag{
    print(food)
}

//var _grocerBag = Set(["Apple", "Oranges", "Pineapple"])
var _grocerBag: Set = ["Apples", "Oranges", "Pineapple"]
_grocerBag

let hasBananas = grocerBag.contains("Bananas")
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGtrceryBag = grocerBag.union(friendsGroceryBag)
let roommatesGroceryBag = Set(["Apples","Bananas","Cereal","Toothpaste"])
let itemsToReturn = commonGtrceryBag.intersection(roommatesGroceryBag)

let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)

import Foundation


var bob: Person? = Person(name:"Bob")
print("create \(String(describing: bob))")

var laptop: Asset? = Asset(name:"Shiny Laptop", value: 1_500.0)
var hat: Asset? = Asset(name: "Cowboy Hat", value: 175.0)
var backpack: Asset? = Asset(name: "Blue Backpack", value: 45.0)

bob?.useNetWorthChangedHandler{
    netWorth in
    print("bob's net worth is now \(netWorth)")
}

bob?.takeOwnership(of: laptop!)
bob?.takeOwnership(of: hat!)

print("While Bob is alive, hat's owner is \(String(describing: hat!.owner))")

bob = nil
print("the bob variable is now \(String(describing: bob))")
print("After Bob isdeallocated, hat's owner is \(String(describing: hat!.owner))")

laptop = nil
hat = nil

backpack = nil

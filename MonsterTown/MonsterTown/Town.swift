import Foundation

struct Town{
    var population = 5_522
    var numberOfStoplights = 4
    func printDescription(){
        print("Population: \(population); number of stoplights:\(numberOfStoplights)")
    }
    mutating func changePopulation(by amount:Int){
        population += amount
    }
}

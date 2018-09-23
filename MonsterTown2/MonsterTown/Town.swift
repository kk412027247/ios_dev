import Foundation

struct Town{
    static let region = "South"
    var population = 5_522 {
        didSet(oldPopulation){
            print("The population has change to \(population) from \(oldPopulation).")
        }
    }
    var numberOfStoplights = 4
    
    enum Size{
        case small
        case medium
        case large
    }
    
    lazy var townSize: Size = {
        switch self.population{
        case 0 ... 10_1000:
            return Size.small
        case 10_001 ... 100_000:
            return Size.medium
        default :
            return Size.large
        }
    }()
    
    func printDescription(){
        print("Population: \(population); number of stoplights:\(numberOfStoplights)")
    }
    mutating func changePopulation(by amount:Int){
        population += amount
    }
    
    
    
}

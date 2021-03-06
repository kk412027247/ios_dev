import Foundation

class Monster{
    var town: Town?
    var name = "Monster"
    
    var victimPool: Int {
        get{
            return town?.population ?? 0
        }
        set(newVictimPool){
            town?.population = newVictimPool
        }
    }
   
    
    func terrorizeTown(){
        if town != nil{
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terroirze yet...")
        }
    }
}

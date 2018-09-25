class Zombie: Monster {
    class var spookyNoise: String{
        return "Brains..."
    }
    //    var walksWithLimp = true
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    init(limp: Bool, fallingApart:Bool, town: Town?, monsterName: String){
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    convenience init(limp: Bool, fallingApart: Bool){
        self.init(limp:limp, fallingApart: fallingApart, town: nil, monsterName:"Fred")
        if walksWithLimp{
            print("This zombie has a back knee")
        }
    }
    
    final override func terrorizeTown(){
        town?.changePopulation(by: -10)
        super.terrorizeTown()
    }
    class func makeSpookyNoise() -> String {
        return "Brains..."
    }
    //    internal var isFallingApart = false
}

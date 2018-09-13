import Cocoa

//var str = "Hello, playground"

let volunteerCounts = [1,3,40,32,2,53,77,13]

func sortAscending(_ i: Int, _ j: Int) -> Bool{
    return i < j
}
//let volunteersSort = volunteerCounts.sorted(by: sortAscending)

//let volunteersSort = volunteerCounts.sorted(by:{
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})


//let volunteersSort = volunteerCounts.sorted ( by: {i, j in i < j})

//let volunteersSort = volunteerCounts.sorted(by:{$0<$1})

let volunteersSort = volunteerCounts.sorted { $0 < $1}

volunteersSort

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads( _ lights: Int, _ existingLights: Int)-> Int {
//        return lights + existingLights
//    }
//    return buildRoads;
//}
//
//var stoplights = 4
//let townPlanByAddingLightsToExistingLights = makeTownGrand()
//stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)

func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int)->Int)? {
    if condition(budget){
        func buildRoads(byAddingLights lights: Int, toExistingLisghts existingLights: Int) -> Int{
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluate(_ budget: Int) -> Bool {
    return budget > 10
}

var stoplights = 4

if let townplanByAddingLightsToExistingLights = makeTownGrand(withBudget: 19, condition: evaluate){
   stoplights = townplanByAddingLightsToExistingLights(4, stoplights)
}

print("knowhere has \(stoplights) stoplights.")

func makePopulationTracker(forIntialPopulation population: Int) -> (Int) -> Int{
    var totalPopulation = population
    func totalPopulationTracker(growth: Int)->Int{
        totalPopulation += growth
        return totalPopulation
    }
    return totalPopulationTracker
}

var currentPopulation = 5_422
let growBy = makePopulationTracker(forIntialPopulation: currentPopulation)

growBy(500)
growBy(500)
growBy(500)
currentPopulation = growBy(500)

let anotherGrowBy = growBy
anotherGrowBy(500)

var bigCityPopulation = 4_061_981
let bigCityGrowBy = makePopulationTracker(forIntialPopulation: bigCityPopulation)
bigCityPopulation = bigCityGrowBy(10_000)
currentPopulation

let precinctPopulations = [1244, 2021, 2157]

let projectPopulations = precinctPopulations.map { (population: Int) -> Int in
    return population * 2
}

projectPopulations

let bigProjections = projectPopulations.filter { (projection: Int) -> Bool in
    return projection > 4000
}

let bigProjections2 = projectPopulations.filter { $0 > 4000}
bigProjections2

let totalProjection = projectPopulations.reduce(0) {
    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
    return accumulatedProjection + precinctProjection
}

let totalProjection2 = projectPopulations.reduce(0) { $0 + $1  }

totalProjection

totalProjection2















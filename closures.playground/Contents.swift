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

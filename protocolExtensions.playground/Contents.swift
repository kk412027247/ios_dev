import Cocoa

protocol Exercise: CustomStringConvertible{
    var name: String{get}
    var caloriesBurned: Double{get}
    var minutes: Double {get}
}

extension Exercise {
    var description: String {
        return "Exercise(\(name), burned \(caloriesBurned) calories in \(minutes) minutes)"
    }
}



struct EllipticalWorkout: Exercise {
    let title = "Workout using the Go Fast Elliptical Trainer 3000"
    let name = "Elliptical Workout"
    let caloriesBurned: Double
    let minutes: Double
}

let ellipticalWorkout = EllipticalWorkout(caloriesBurned: 335, minutes: 30)

struct TreadmillWorkout: Exercise {
    let name = "Treadmill Workout"
    let caloriesBurned: Double
    let minutes: Double
    let laps: Double
}


extension TreadmillWorkout {
    var description: String {
        return "ThreadmillWorkout(\(caloriesBurned) calories and \(laps) laps in \(minutes) minutes"
    }
}

let runingWorkout = TreadmillWorkout(caloriesBurned: 350, minutes: 25, laps: 10.5)

func caloriesBurnedPerMinute<E: Exercise>(for execrise: E) -> Double {
    return execrise.caloriesBurned / execrise.minutes
}

extension Exercise{
    var caloriesBurnedPerMinute: Double {
        return caloriesBurned / minutes
    }
}

print(caloriesBurnedPerMinute(for: ellipticalWorkout))
print(caloriesBurnedPerMinute(for: runingWorkout))

print(ellipticalWorkout.caloriesBurnedPerMinute)
print(runingWorkout.caloriesBurnedPerMinute)

print(ellipticalWorkout)
print(runingWorkout)

extension Sequence where Iterator.Element == Exercise {
    func totalCaloriesBurned() -> Double {
        var total: Double = 0
        for exercise in self {
            total += exercise.caloriesBurned
        }
        return total
    }
}

let mondayWorkout: [Exercise] = [ellipticalWorkout, runingWorkout]
print(mondayWorkout.totalCaloriesBurned())

extension Exercise {
    var title: String {
        return "\(name) - \(minutes) minutes"
    }
}

for exercise in mondayWorkout {
    print(exercise.title)
}

print(ellipticalWorkout.title)

// Kevin Mattappally
// The Swift Programming Language

import Foundation

// INHERITANCE

class Bicycle {
    var currentSpeed: Int = 14
    var tirePressure: Int = 55
    var gearShift: Int = 5
    var isWorking: Bool = true
    var description: String {
        let speed = "Current Speed: \(currentSpeed) mph \n"
        let tire = "Tire Pressure: \(tirePressure) psi \n"
        let gear = "Gear: \(gearShift)"
        return speed + tire + gear
    }
    func condition() {
        if tirePressure > 30 && tirePressure < 80 && isWorking {
            print("Bicycle is working and ready to go!")
        }
    }
}

let sampleBike = Bicycle()
print(sampleBike.description)

// subclassing
/*
class SomeSubclass: SomeSuperclass {
// subclass definition goes here
}
*/
class MountainBike : Bicycle {
    var type: String = "Trail"
    var suspensions: String = "Hardtail"
}
let mtb = MountainBike()
mtb.tirePressure = 40
print(mtb.description)

// overriding (methods)
class RoadBike : Bicycle {
    override func condition() {
        if tirePressure > 50 && tirePressure < 100 && isWorking {
            print("Road bike is working and ready to go!")
        }
    }
}
let road = RoadBike()
road.condition()

// overriding properties
class Cruiser : Bicycle {
    var hasBasket: Bool = true
    override var description: String {
        return super.description + "\nCruiser contains a basket"
    }
}
let cruise = Cruiser()
print(cruise.description)

// overriding property observers
class Moped : Bicycle {
    override var currentSpeed: Int {
        didSet {
            gearShift = currentSpeed / 10
        }
    }
}
let mop = Moped()
mop.currentSpeed = 20
print(mop.gearShift)

// preventing overrides (use final)



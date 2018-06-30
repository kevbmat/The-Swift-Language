// Kevin Mattappally
// The Swift Programming Language

import Foundation

// METHODS (functions that associate with a particular type)

// instance methods
class Money {
    var pocket: Double = 30
    var cost: Double = 12.99
    var totalPaid: Double = 15
    var change: Double {
        return totalPaid - cost
    }
    func getPaid() {
        pocket += 20
    }
    func pay(cost: Double) {
        pocket -= cost
    }
}

let transactions = Money()
transactions.pocket = 40
transactions.getPaid()
transactions.pocket
transactions.pay(cost: 15)
transactions.pocket

// self property
struct Point {
    var x: Double = 0, y: Double = 0
    func greaterThanX(x: Double) -> Bool {
        return self.x > x
    }
}
let samplePoint = Point(x: 2, y: 2)
samplePoint.greaterThanX(x: 4)

// modifying value types from within instance methods (mutating)
struct Coordinate {
    var x: Double = 0.0, y: Double = 0.0, z: Double = 0.0
    mutating func move(deltaX: Double, deltaY: Double, deltaZ: Double) {
        x += deltaX
        y += deltaY
        z += deltaZ
    }
    // alternate function using assigning to self
    mutating func selfMove(deltaX: Double, deltaY: Double, deltaZ: Double) {
        self = Coordinate(x: x + deltaX, y: y + deltaY, z: z + deltaZ)
    }
}
var someCoordinate = Coordinate()
someCoordinate.move(deltaX: 4, deltaY: 2, deltaZ: 8)
print("Coordinate is now at (\(someCoordinate.x), \(someCoordinate.y), \(someCoordinate.z))")

// enum example
enum lightSwitch {
    case on, off
    mutating func flick() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
var light = lightSwitch.off
light.flick()
light.flick()

// type methods
class SomeClass {
    class func someTypeMethod() {
        // type method implementation goes here
    }
}
SomeClass.someTypeMethod()

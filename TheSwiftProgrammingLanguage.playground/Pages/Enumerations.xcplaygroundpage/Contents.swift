// Kevin Mattappally
// The Swift Programming Language

import Foundation

// ENUMERATIONS

// enumeration syntax
enum Directions {
    case up
    case down
    case left
    case right
}

enum CompassPoints {
    case north, south, east, west
}

var way = CompassPoints.east
way = .west

// matching enumeration values with a switch statement
var wasd = Directions.up
switch wasd {
case .up:
    print("Press w")
case .down:
    print("Press s")
case .left:
    print("Press a")
case .right:
    print("Press d")
}

var goLeft = Directions.left
switch goLeft {
case .left:
    print("Correct direction")
default:
    print("Incorrect direction")
}

// iterating over enumeration cases (new to Swift 4.2)
/* enum fruits: CaseIterable {
    case apple, banana, orange, peach
}
let numberOfFruits = fruits.allCases.count
print("\(numberOfFruits) fruits to choose from")

for fruit in fruits {
    print(fruit)
} */

// associated values

enum Location {
    case city(String)    // enum with value city with associate value type String or
    case zipcode(Int)    // value zipcode with associated value type Int
}

var place = Location.city("Spokane")
place = .zipcode(99258)

switch place {
case let .city(cityName):
    print("City: \(cityName)")
case let .zipcode(code):
    print("Zip: \(code)")
}

// raw values
enum Talk: String {
    case greeting = "Hello"
    case farewell = "Goodbye"
}

    // implicitly assigned raw values
enum MedalStandings: Int {
    case gold = 1, silver, bronze
}

enum Compass: String {
    case north, south, east, west
}

let thirdPlace = MedalStandings.bronze.rawValue
let sunset = Compass.west.rawValue    // default raw value is the String equivalent of the case

    // initializing from a raw value
let secondPlace = MedalStandings(rawValue: 2)

// recursive enumerations (uses indirect)
enum Divide {
    case number(Int)
    indirect case divide(Divide, Divide)
    indirect case remainder(Divide, Divide)
}

let dividend = Divide.number(15)
let divisor = Divide.number(4)
let quotient = Divide.divide(dividend, divisor)
let remainder = Divide.remainder(dividend, divisor)

func evaluate(expression: Divide) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .divide(first, second):
        return evaluate(expression: first) / evaluate(expression: second)
    case let .remainder(first, second):
        return evaluate(expression: first) % evaluate(expression: second)
    }
}

print(evaluate(expression: remainder))

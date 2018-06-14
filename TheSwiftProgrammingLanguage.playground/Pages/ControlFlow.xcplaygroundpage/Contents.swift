// Kevin Mattappally
// The Swift Programming Language

import Foundation

// CONTROL FLOW
// note: In previous pages I ended statements with a semicolon, but this page onward I am omitting semicolons

// for-in loops
let berries = ["bluberries", "strawberries", "raspberries", "blackberries"]
for fruits in berries {
    print(fruits)
}

let peopleToAge = ["John": 20, "Jack": 30, "James": 15, "Joe": 25]
for (names, ages) in peopleToAge {
    print("\(names) is \(ages) years old.")
}

for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}

var answer = 1
for _ in 1...5 { // underscore means individual values during loop will be ignored
    answer *= 2
}
print("2 to the power of 5 is \(answer)")
    // half open range
let seconds = 60
for tick in 0..<seconds {
    print("\(tick) ", terminator: "")
}
print("")

    // stride with interval (every 5)
for tick in stride(from: 0, to: 60, by: 5) {
    print("\(tick) ", terminator: "")
}
print("")
    // stride with inclusive end point
for tick in stride(from: 0, through: 60, by: 5) {
    print("\(tick) ", terminator: "")
}
print("")

// while loops (checks condition in the beginning)
var max: Int = 10
var current: Int = 1
while current < max {
    print("\(current) ", terminator: "")
    current += 1
}
print("");

// repeat while loops (checks condition at the end)
current = 1
repeat {
    print("\(current) ", terminator: "")
    current += 1
} while current < max

// conditional statements (if)
let age: Int = 20
if age < 12 {
    print("User is a child")
} else if age < 18 {
    print("User is a teenager")
} else {
    print("User is an adult")
}

// conditional statements (switch)
let userChoice: Character = "j"    // represents a typical menu with option
switch userChoice {
case "i":
    print("inserting value")
case "r":
    print("reloading program")
case "p":
    print("print screen")
case "e":
    print("exiting program")
default:
    print("continuing program");   // since j doesn't fit in the previous categories, the default case is printed
}

let vowelOrConsonant: Character = "e"
switch vowelOrConsonant {
case "a", "e", "i", "o", "u":
    print("vowel")
default:
    print("consonant")
}

    // interval matching
let numberOfPeople = 14
switch numberOfPeople {
case 0:
    print("There is nobody here")
case 1..<5:
    print("There are a few people here")
case 5..<12:
    print("There is a decent amount of people here")
case 12..<50:
    print("There are dozens of people here")
case 50..<100:
    print("There are many people here")
default:
    print("There are too many people here")
}

    // tuples
let coordinatePoint = (1, -1);
switch coordinatePoint {
case (0,0):         // this case is considered first, even though it fits in the other categories
    print("Coordinate is on the origin")
case (0, _):
    print("Coordinate is on the x axis")
case (_, 0):
    print("Coordinate is on the y axis")
case (-2...2, -2...2):
    print("Coordinate is within the range and domain")
default:
    print("Coordinate is outside the range and domain")
}

    // value bindings
let bowlingPinsHit = (Mark: 10, Manny: 8) // for first throw, spares aren't considered
switch bowlingPinsHit {
case (10, let y):
    print("Mark hit a strike and Manny hit \(y) pins")
case (let x, 10):
    print("Mark hit \(x) pins and Manny hit a strike")
case let (x, y):
    print("Mark int \(x) pins and Manny hit \(y) pins") // since this case is exhaustive, a default case isn't neccessary
}

    // where
let anotherPoint = (2, 2)
switch anotherPoint {
case let (x, y) where y == x:
    print("\(x), \(y) is on the line y == x")
case let (x, y) where y == -x:
    print("\(x), \(y) is on the line y == -x")
case let (x, y):
    print("\(x), \(y) is on another line")
}

    // compound cases with value bindings
let nextBowlingPinsHit = (James: 9, John: 10)
switch nextBowlingPinsHit {
case (10, 10):
    print("James and John hit a strike")
case (let pins, 10), (10, let pins):
    print("One hit a strike an the other hit \(pins) pins")
default:
    print("Neither James nor John hit a strike")
}

// control transfer statements (continue, break, fallthrough, return, throw)

    // continue (tells loop to stop what it is doing and start the next iteration of the loop)
let numbers = "12345"
let primeNumbers: [Character] = ["2", "3", "7"]
var compositeNumbers = ""
for char in numbers {
    if primeNumbers.contains(char) {
        continue
    } else {
        compositeNumbers.append(char)
    }
}
print(compositeNumbers)

    // break (ends execution of an entire control flow statement immediately)
let someChar: Character = "!"
switch someChar {
case "!":
    break
default:
    print("\(someChar) not an exclamation point")
}

    // fallthrough
let consonantOrVowel: Character = "e"
switch consonantOrVowel {
case "a", "e", "i", "o", "u":
    print("\(consonantOrVowel) is a vowel and ", terminator: "")
    fallthrough // goes into next case
default:
    print("\(consonantOrVowel) is a letter of the alphabet")
}
print("")

    // labelled statements
let maxVal = 8
let currentVal = 3

outerLoop: for index in 1...5 {
    print(index)
    innerIf: if index == 4 {
        break outerLoop
    }
}

// early exit (guard statement)
func foo(sample: String?) -> String {
    guard sample != nil else {
        return "nil sample"
    }
    return sample!
}

// checking API availability
if #available(iOS 11, macOS 10.12, *) {
    // use current apis
} else {
    // use earlier apis
}

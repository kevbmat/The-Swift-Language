// Kevin Mattappally
// The Swift Programming Language

import Foundation

// CONTROL FLOW
// note: In previous pages I ended statements with a semicolon, but this topic onward I am omitting semicolons

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





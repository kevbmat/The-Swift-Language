// Kevin Mattappally
// The Swift Programming Language

import Foundation

// CLOSURES

let vowels: [Character] = ["i", "a", "e", "u", "o", "y"]
func backwardsSort(_ one: Character, _ two: Character) -> Bool {
    return one > two  // first character is greater than the second character
}
var reversedVowels = vowels.sorted(by: backwardsSort)

// now let's see the same concept with a closure

// closure expression syntax
/*
 { (parameters) -> return type in
 statements
 }
 */
let names: [String] = ["Jackson", "Kendall", "Amy", "Zack", "Emily"]
var backwardsNames = names.sorted(by: { (n1: String, n2: String) -> Bool in
    return n1 > n2 // first name is greater than the second name
})

// another example with addition / subtraction
let addSub = {(x: Int, y: Int, add: Bool) -> (Int) in
    return add ? x + y : x - y}
addSub(6, 4, false)

// inferring type from context
var forwardNames = names.sorted(by: {n1, n2 in return n1 < n2}) // type infered because sorted by only takes (String, String) -> Bool
print(forwardNames) // now shows names in alphabetical order


// implicit returns from single-expression closures
backwardsNames = names.sorted(by: {n1, n2 in n1 > n2})
print(backwardsNames)

// shorthand argument names
backwardsNames = names.sorted(by: {$0 > $1})
print(backwardsNames)

// operator methods
backwardsNames = names.sorted(by: >)
print(backwardsNames)

// trailing closures
backwardsNames = names.sorted() { $0 > $1}
print(backwardsNames)

let numToWord: [Int: String] = [1: "One", 2: "Two", 3: "Three"]
let nums = [3, 1, 2]
let words = nums.map({(number: Int) -> (String) in
    let currentNum = number;
    let stringOutput = numToWord[currentNum]
    return stringOutput!
})
print(words)

// capturing values
func makeIncrementOrDecrement(add: Bool, amount: Int) -> () -> Int {
    var currentTotal = 0
    func incrementOrDecrement() -> Int {
        currentTotal += add ? amount : -amount
        return currentTotal
    }
    return incrementOrDecrement
}

var addTen = makeIncrementOrDecrement(add: true, amount: 10)
addTen()
addTen()
addTen()

// closures and functions are reference types
let alsoAddTen = addTen
alsoAddTen()

// escaping closures
var closureArray: [() -> Void] = []
func escapingClosure(close: @escaping () -> Void) {
    closureArray.append(close)
}

// autoclosures
var queue: [String] = ["James", "Jack", "John"]
print(queue.count)

let nowUp = { queue.remove(at: 0) }
print(queue.count)

print("\(nowUp()) is now up")
print(queue.count)


// Kevin Mattappally
// The Swift Programming Language

import Foundation

// FUNCTIONS

// defining and calling functions
func nameAndAge(name : String, age: Int) -> String {
    return "My name is \(name) and I am \(age)"
}
print(nameAndAge(name: "Kevin", age: 20))

// function parameters and return values

    // functions without parameters
func funTimes() -> String {
    return "Fun times in the bag!"
}
print(funTimes())

    // functions without return values (returns an empty tuple technically)
func printName(name: String) {
    print("My name is \(name)")
}
printName(name: "James")

    // return value ignored
func signedIn(name: String, hasSignedIn: Bool) -> Bool {
    switch hasSignedIn {
    case true:
        print("\(name) has signed in")
    case false:
        print("\(name) hasn't signed in")
    }
    return hasSignedIn
}
let _ = signedIn(name: "Joe", hasSignedIn: false)

    // functions with multiple return values
func quotientAndRemainder(dividend: Int, divisor: Int) -> (quotient: Int, remainder: Int) {
    let quotient = dividend / divisor
    let remainder = dividend % divisor
    return (quotient, remainder)
}
let values = quotientAndRemainder(dividend: 7, divisor: 3)
print("7 divided by 3 is \(values.quotient) with a remainder of \(values.remainder)")

    // optional tuple return types
func quotientAndRemainder2(dividend: Int?, divisor: Int?) -> (quotient: Int, remainder: Int)? {
    if dividend == nil || divisor == nil {
        return nil
    }
    let quotient = dividend! / divisor!
    let remainder = dividend! % divisor!
    return (quotient, remainder)
}
let values2 = quotientAndRemainder(dividend: 8, divisor: 4)
print("8 divided by 4 is \(values2.quotient) with a remainder of \(values2.remainder)")

// function argument labels and parameter names
func timesThree(argumentLabel parameterName: Int) {
    print("\(parameterName) * 3 = \(parameterName * 3)")
}
timesThree(argumentLabel: 4) // uses argument label to call instead of parameter name

    // default parameter values
func plusThree(firstNum: Int = 4) {
    print("\(firstNum) + 3 = \(firstNum + 3)")
}
plusThree() // uses default value

    // variadic parameters
func longestName(names: String...) -> String {
    var longName = ""
    for name in names {
        if name.count > longName.count {
            longName = name
        }
    }
    return "\(longName) has the longest name"
}
print(longestName(names: "Ki"))
print(longestName(names: "Bob", "John"))
print(longestName(names: "John", "Kat", "Alphonse", "George"))

// in-out parameters (lets you change the value of the parameter)
func squared(a: inout Int) {
    a = a * a
}
var integer = 4
squared(a: &integer)
print(integer)

// function types
func subtractTwo(a: Int, b: Int) -> Int { // type (Int, Int) -> Int
    return a - b
}

func divideTwo(a: Int, b: Int) -> Int { // type (Int, Int) -> Int
    return a / b
}

func helloWorld() -> String { // type () -> String
    return "Hello World"
}

func printWorld() { // type () -> Void
    print("Hello World")
}

    // using function types
var operation: (Int, Int) -> Int = subtractTwo
print("6 - 2 = \(operation(6, 2))")
operation = divideTwo
print("6 / 2 = \(operation(6, 2))")

    // function types as parameter names
func printOperations(mathFunc: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: = \(mathFunc(a, b))")
}
printOperations(mathFunc: subtractTwo, a: 7, b: 4)

    // function types as return types
func addOne(input: Int) -> Int {
    return input + 1
}

func subtractOne(input: Int) -> Int {
    return input - 1
}

func arithmeticOperation(add: Bool) -> (Int) -> Int {
    return add ? addOne : subtractOne
}

print("Next result: \(arithmeticOperation(add: true)(6))") // since add is true, 1 is added to 6

    // nested functions
func nestedArithmeticOp(add: Bool) -> (Int) -> Int {
    func addOne(input: Int) -> Int {
        return input + 1
    }
    func subtractOne(input: Int) -> Int {
        return input - 1
    }
    return add ? addOne : subtractOne
}
print("Final Result: \(nestedArithmeticOp(add: false)(3))")

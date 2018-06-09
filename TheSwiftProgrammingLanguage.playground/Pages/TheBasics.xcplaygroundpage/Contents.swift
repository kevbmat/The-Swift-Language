// Kevin Mattappally
// The Swift Programming Language

import UIKit

// THE BASICS

// essential hello world
print("Hello World!");

// constant and variable declaration
let myConstant = 21;
var myVariable = 31;

let constantX = 1, constantY = 2, constantZ = 3;
var variableX = 4, variableY = 5, variableZ = 6;

// type annotation
var message: String;
message = "Hi There!";
message = "you there!";
var nextMessage: String;
nextMessage = "Hi";
print(message);

var one, two, three: Double;
one = 1.0;
two = 2.0;
three = 3.0;

// string interpolation
print("the value of three is \(three)");
print("Are \(message)");
print("\(nextMessage) how are you?");

// integer bounds (unsigned ints)
let minValue = UInt8.min;
let maxValue = UInt8.max;

// type safety
let intNumber = 60; // inferred as int
let doubleValue = 4.31123 // inferred as double

// numeric literals
let decimalInt = 3;
let binaryInt = 0b1010;
let hexInt = 0x12;

// int conversion
let twoHundred: UInt16 = 200;
let four: UInt8 = 4;
let twoHundredAndFour = twoHundred + UInt16(four);

// int and floating point conversion
let six = 6;
let point32 = 0.32;
let sixPoint32 = Double(six) + point32;
let integerSixPoint32 = Int(sixPoint32);

// type aliases
typealias Sample16 = UInt16;
var testSample = Sample16.min;

// booleans
let tomatoesAreFruits = true;
let sodaIsHealthy = false;

if tomatoesAreFruits {
    print("tomatoes are fruits");
} else {
    print("tomatoes aren't fruits");
}

if (six == 6) {
    print("six is 6");
}

// tuples
let tupleExample = ("Kevin", 20, true);
print("\(tupleExample.0), \(tupleExample.1), \(tupleExample.2)");
let (name, age, isHuman) = tupleExample;
print("My name is \(age)");
print("My age is \(20)")
print("Am I Human? \(isHuman)");

let LarrytheLion = (lionName: "Larry", species: "Lion");

// optionals
let stringNum = "8";
let convertedNum = Int(stringNum); // type Int? or optional Int (either Int or nothing at all)

var nilNumber: Int? = 234; // optional Int
nilNumber = nil; // now has no value
var initializedStringToNil: String?; // automatically set to nil

// if statements and forced unwrapping
nilNumber = 567;
if (nilNumber != nil) {
    print("nilNumber has a value now");
}
print("nilNumber has a value of \(nilNumber!)"); // forced unwrapping

// optional binding
let possibleNumber = "789";
if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has a value of \(actualNumber)");
} else {
    print("\(possibleNumber) doesn't have an integer value");
}

if let firstVal = Int("5"), let secondVal = Int("40"), firstVal < secondVal {
    print("\(firstVal) is less than \(secondVal)");
}

// implicitly unwrapped optionals (when assumed the variable is not nil)
let possibleString: String? = "Optional String not equal to nil";
let forcedString: String = possibleString!;

let assumedString: String! = "Implicitly unwrapped optional";
let implicitString: String = assumedString;

// error handling
func canThrowError() throws {
    print("Will I throw an error?");
}

do {
    try canThrowError(); // no error
} catch {
    // error
}

// debugging with assertions
let numberOfSnacks = 4;
assert(numberOfSnacks >= 0, "You can't have a negative number of snacks");

let numberOfGlasses = 2;
if numberOfGlasses > 0 {
    print("Possible value");
} else {
    assertionFailure("You can't have a negative number of glasses");
}

// enforcing preconditions
let index: Int = 3;
precondition(index > 0, "index has to be greater than 0");

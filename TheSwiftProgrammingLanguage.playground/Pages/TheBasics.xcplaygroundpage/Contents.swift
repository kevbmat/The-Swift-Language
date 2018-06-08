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




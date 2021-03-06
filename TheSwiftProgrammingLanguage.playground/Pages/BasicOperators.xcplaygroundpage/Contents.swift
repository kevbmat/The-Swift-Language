// Kevin Mattappally
// The Swift Programming Language

import Foundation

// BASIC OPERATORS

// unary (-a), binary (a + b) , and ternary (a ? b : c)

// assignment operator
var a = 3;
var b = 5;
a = b; // a = 5

// tuple assignment
let (x, y) = (11, 22);

// arithmetic operators
2 + 2;
6 - 2;
9 * 9;
15.0 / 2.5;

// string concatenation
let helloWorld = "hello" + " world";

// remainder operator
// note: a % b ==  a % -b
5 % 2;
-9 % 4; // -1

// unary minus operator
let four = 4;
let minusFour = -four;
let plusFour = +four;

// unary plus operator
let minusSeven = -7;
let nextMinusSeven = +minusSeven;

// compound assignment operators
var c = 3;
c += 2;

// comparison operators
1 == 1;
2 != 1;
3 > 1;
4 < 6;
7 >= 7;
9 <= 12;

// tuple comparison (compares first value, if first values are equal, compares second, etc.)
(1, "beans") < (2, "cookies");
("cookies", 3) < ("apples", 2);
(5, "eggs") == (5, "eggs");

// ternary conditional operator
var question = 5 == 5;
var value = 2;
        // if  /then   //else
value = question ? 1 : 0;

// nil-coalescing 
let defaultColor = "green";
var userColor: String?;
var colorToUse : String;

colorToUse = userColor ?? defaultColor; //equivalent to the following commented code
/*
if (userColor != nil) {
    colorToUse == userColor;
} else {
    colorToUse = defaultColor;
}
 
OR
 
 colorToUse = userColor != nil ? userColor! : defaultColor;
*/

// range operator (closed)
for index in 1...6 {
    print("\(index) times 3 equals \(index * 3)");
}

// range operator (half-open)
let names = ["Adam", "Blake", "Chase", "Danny"];
let nameCount = names.count;
for index in 0..<nameCount {
    print("User \(index + 1) is \(names[index])");
}

// one-sided ranges
for userName in names[2...] { // always note forloops in swift don't have paranthesis
    print(userName);
}
print("\n");
for userName in names[...2] {
    print(userName);
}

let range = 2...4;
range.contains(3);
range.contains(5);
range.contains(2);

// logical operators (not)
let yes = true;
let no = !yes;

// logical operators (and)
if yes && no {
    print("not okay");
} else {
    print("okay (and)");
}

// logical operators (or)
if yes || no {
    print("okay (or)");
} else {
    print("not okay");
}

// order of operators precedence from most important to least important
// ! , && , ||

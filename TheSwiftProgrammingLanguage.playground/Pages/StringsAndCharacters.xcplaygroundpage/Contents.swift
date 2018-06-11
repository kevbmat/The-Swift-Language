// Kevin Mattappally
// The Swift Programming Language

import Foundation

// STRINGS AND CHARACTERS

// string literals
let exampleString = "This is a string";

// multiline string literals
let multiLine = """
The quick brown fox jumped over the lazy dog.
"After the lazy dog found out, he got mad."
"But the fox was too quick and got away."
""";
print(multiLine);

let lineBreaks = """

There is space before
and after this sentence.

""";
print(lineBreaks); // note use \""" (escape character) to put a literal triple quote in the multiline string

let indentations = """
    No indents on this line
        However this line should show up as indented
    No indents here as well
"""; // indent level depends on where this quotation mark is placed
print(indentations);

// special characters in string literals
print("\"There are literal quotes before and after this sentence.\"");
print("\u{24} \u{2665} \u{1F496}"); // dollar sign, heart, pink heart in unicode

// initializing an empty string
var empty = ""
var nextEmpty = String();

if empty.isEmpty {
    print("empty is empty");
}

// string mutability (note Strings are value types not reference types)
var pbj = "Peanut Butter "
pbj += " and Jelly"; // variables can be edited later

let bread = "Bread"; // constants can't be edited later

// working with characters
for x in "Hello" {
    print(x);
}

let poundSign: Character = "#";

let worldArray: [Character] = ["w", "o", "r", "l", "d"];
let worldString = String(worldArray);
print(worldString);

// concatenating strings and characters
let how = "How's ";
let it = "it";
var howIt = how + it;
howIt += " going";

let questionMark: Character = "?";
howIt.append(questionMark);     // use append to add character values to the end of a string

let oneTwo = """
one
two

"""

let three = """
three
"""

let oneTwoThree = oneTwo + three;
print(oneTwoThree);

// string interpolation
let number = 4;
print("\(number) times 5 equals \(number * 5)");

// unicode


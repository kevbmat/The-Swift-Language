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
let babyChick = "\u{1F425}";
let a = "\u{0061}";

// extreme grapheme clusters
let airplane: Character = "\u{2708}";
let acuteA: Character = "\u{e1}";
let nextAcuteA: Character = "\u{61}\u{301}";
let enclosedAcuteA: Character = "\u{e1}\u{20dd}"

// combined unicode scalers (regional indicator)
let unitedStates: Character = "\u{1f1fa}\u{1f1f8}";

// precomposed and decomposed characters (Korean)
let precomposed: Character = "\u{d55c}";
let decomposed: Character = "\u{1112}\u{1161}\u{11ab}";

// counting characters
let sentence = "How many characters?";
print("The sentence contains \(sentence.count) characters."); // count includes spaces

// accessing and modifying a string

    // string indices                       // note: from here subcategories will be tabbed
let quickFox = "The quick brown fox";
quickFox[quickFox.startIndex];
quickFox[quickFox.index(before: quickFox.endIndex)];
quickFox[quickFox.index(after: quickFox.startIndex)];
let wantedIndex = quickFox.index(quickFox.startIndex, offsetBy: 7);
quickFox[wantedIndex];

for index in quickFox.indices {
    print("\(quickFox[index]) ", terminator: "");
}
    // inserting and removing
var morning = "Good Morning";
morning.insert("!", at: morning.endIndex);
morning.insert(contentsOf: " Kevin", at: morning.index(before: morning.endIndex));

morning.remove(at: morning.index(morning.endIndex, offsetBy: -1)); // removes exclamation
let range = morning.index(morning.endIndex, offsetBy: -5)..<morning.endIndex;
morning.removeSubrange(range);

// substrings
let initialString = "Fun times in the bag";

    // first part of phrase
let index = initialString.index(initialString.startIndex, offsetBy: 9);
let firstSubstring = initialString[..<index];

    // second part of phrase
let index2 = initialString.index(initialString.endIndex, offsetBy: -10);
let lastSubstring = initialString[index2...];

    // specific range
let start = initialString.index(initialString.startIndex, offsetBy: 10);
let end = initialString.index(initialString.endIndex, offsetBy: -4);
let rangeSubstring = initialString[start..<end];

// comparing strings

    // string and character equality
let firstPhrase = "How's it going?";
let secondPhrase = "How's it going?";
if firstPhrase == secondPhrase {
    print("\nequal phrases");
} else {
    print("\nunequal phrases");
}

    // prefix and suffix equality
let phrase = "Danny went to the store to buy groceries";
if phrase.hasPrefix("Danny went") {
    print("prefix confirmed");
}
if phrase.hasSuffix("to buy groceries") {
    print("suffix confirmed");
}

// unicode representation of strings
let plane = "Airplane \u{2708}";

    // utf8
for codeUnit in plane.utf8 {
    print("\(codeUnit)", terminator: "");
}
print("");

    // utf16
for codeUnit in plane.utf16 {
    print("\(codeUnit)", terminator: "");
}
print("");

    // scalar representation
for scalar in plane.unicodeScalars {
    print("\(scalar.value)", terminator: "");
}
print("");

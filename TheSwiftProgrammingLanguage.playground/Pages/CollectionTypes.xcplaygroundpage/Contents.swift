// Kevin Mattappally
// The Swift Programming Language

import Foundation

// COLLECTION TYPES
// note: three primary collection types (arrays, sets, dictionaries)

// arrays

    // empty array
var integers = [Int]();

integers.append(5); // 5 is now an element in the array
integers = []; // now the array is empty again

    // creating an array with a default value
var fourTwos = Array(repeating: 2, count: 4);

    // creating an array by adding two arrays together
var twoFours = Array(repeating: 4, count: 2);
var foursAndTwos = fourTwos + twoFours;

    // creating an array with an array literal
var foodItems: [String] = ["eggs", "bananas", "spinach", "milk"];

    // accessing and modifying an array
print("There are \(foodItems.count) items in the list");
if foodItems.isEmpty {
    print("There are no food items.");
} else {
    print("There are food items");
}
        // adding to the array
foodItems.append("oats");
foodItems += ["carrots"];
foodItems += ["cheese", "rice"];
print("Now there are \(foodItems.count) items in the list");

        // modifying and accessing
var secondItem = foodItems[1];
foodItems[3] = "juice";
print(foodItems);
foodItems[1...3] = ["cereal", "blueberries"]; // since there are only two items, the third index is left alone
print(foodItems);
foodItems.insert("cilantro", at: 4);
print(foodItems);

        // removing
foodItems.remove(at: 4);
print(foodItems);
foodItems.removeLast();
print(foodItems);

    // iterating over an array
for item in foodItems {
    print(item);
}

for (index, item) in foodItems.enumerated() {
    print("Index \(index): \(item)");
}

// sets (order doesn't matter, no duplicate items)

    // initalizing an empty set
var numbers = Set<Int>();
print("This set has \(numbers.count) numbers");

    // inserting
numbers.insert(2); // inserts a two
print(numbers);
numbers = []; // makes the set empty again

    // creating a set with an array literal
var sports: Set<String> = ["Soccer", "Basketball", "Football"];  // note sets must be explicitly declared

    // accessing and modifying a set
print("There are \(sports.count) sports in the set");

        // isEmpty check
if sports.isEmpty {
    print("There are no sports in the list");
} else {
    print("There are sports in the list");
}

        // inserting
sports.insert("Hockey");
print(sports);

        // removing
sports.remove("Soccer");
print(sports);
let football = sports.remove("Football");
print("\(sports) but \(football!) has been removed");

        // contains
var meals: Set<String> = ["Breakfast", "Lunch", "Snack", "Dinner", "Late Night"];
if meals.contains("Snack") {
    print("We like to snack!");
}

    // iterating over a set
for mealtime in meals {
    print(mealtime);
}
print("\n");

    // iterating over a sorted set
for mealtime in meals.sorted() {
    print(mealtime);
}

// performing set operations
let multiplesOfTwo: Set = [2, 4, 6, 8, 10, 12];
let multiplesOfThree: Set = [3, 6, 9, 12, 15];

    // fundamental set operations (intersection, symmetricDifference, union, subtracting)
multiplesOfTwo.union(multiplesOfThree).sorted();
multiplesOfTwo.intersection(multiplesOfThree).sorted();
multiplesOfTwo.subtracting(multiplesOfThree).sorted();
multiplesOfTwo.symmetricDifference(multiplesOfThree).sorted();

    // set membership and equality (superset, subset, disjoint)
let fruits: Set = ["apples", "bananas", "pineapples"];
let vegetables: Set = ["spinach", "carrots", "onions"];
let foods: Set = ["apples", "bananas", "pineapples", "spinach", "carrots", "onions"];

fruits == vegetables;                   // false
foods.isSuperset(of: fruits);           // true
fruits.isSubset(of: foods);             // true
fruits.isDisjoint(with: vegetables);    // true

// dictionaries (stores keys and values)

    // creating an empty dictionary
var ageToName = [Int : String](); // [Key : Value]
ageToName[21] = "James"; // dictionary now has one key, value pair
print(ageToName);
ageToName = [:]; // now dictionary is empty
print(ageToName);

    // creating a dictionary with a dictionary literal
var stateCapitals: [String : String] = ["Olympia": "Washington", "Salem": "Oregon", "Sacramento": "California", "Boise": "Idaho"];
print(stateCapitals);
stateCapitals["Salt Lake City"] = "Utah";
print(stateCapitals);

    // accessing and modifying a dictionary

        // count
print("The state capitals dictionary contains \(stateCapitals.count) items.");

        // isEmpty
if stateCapitals.isEmpty {
    print("There are no items in this dictionary");
} else {
    print("There are items in this dictionary");
}

        // modifying a value associated with a key
stateCapitals["Olympia"] = "Washington State";
print(stateCapitals);

        // update value
let oldValue = stateCapitals.updateValue("Oregon State", forKey: "Salem");
print("The old value for Salem was \(oldValue!)");
print(stateCapitals);

        // removing values
stateCapitals["Salt Lake City"] = nil;
print(stateCapitals);
let removedValue = stateCapitals.removeValue(forKey: "Boise");
print(stateCapitals);

    // iterating over a dictionary
for (capital, state) in stateCapitals {
    print("\(capital) is the capital of \(state)");
}

for capital in stateCapitals.keys {
    print("Capital: \(capital)");
}

for state in stateCapitals.values {
    print("State: \(state)");
}
    // dictionary keys and values in an array instance
let stateNames = [String](stateCapitals.values);
let capitalsOfStates = [String](stateCapitals.keys);

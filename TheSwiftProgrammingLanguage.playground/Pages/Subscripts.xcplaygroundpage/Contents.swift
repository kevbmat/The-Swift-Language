// Kevin Mattappally
// The Swift Programming Language

import Foundation

// SUBSCRIPTS

// subscript syntax
/*
subscript(index: Int) -> Int {
    get {
        // return an appropriate subscript value here
    }
    set(newValue) {
        // perform a suitable setting action here
    }
}*/

// example
struct AddTogether {
    let number: Int
    subscript(index: Int) -> Int {
        return index + number
    }
}
let addSeven = AddTogether(number: 3)
addSeven[7]

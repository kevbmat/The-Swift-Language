// Kevin Mattappally
// The Swift Programming Language

import Foundation

// STRUCTURES AND CLASSES

// comparing structures and classes

    // definition syntax
struct Examplestruct {
    // definition
}

class ExampleClass {
    // definition
}

// bicycle example
struct BikeSize {
    var length = 15
    var height = 9
    var weight = 5
}

class MountainBike {
    var size = BikeSize()
    var fullSuspension: Bool = false
    var brakeType: String = "Disk"
    var wheelSize: Int = 26
    var manufacturer: String = "Cannondale"
}

// creating instances
let someSize = BikeSize()
let someBike = MountainBike()

// accesing properties (dot syntax)
print("Bike length: \(someSize.length) Bike height: \(someSize.height)")
print("The \(someBike.manufacturer) mountain bike has \(someBike.brakeType) brakes")

// subcategory accessing
print("The specific mountain bike weight is \(someBike.size.weight)")
someBike.size.weight = 11
print("Now the weight is \(someBike.size.weight)")

// memberwise initializers for structure types
let newSize = BikeSize(length: 30, height: 20, weight: 6)

// NOTE: STRUCTS AND ENUMERATIONS ARE VALUE TYPES, CLASSES ARE REFERENCE TYPES

// identity operators (=== !==)
let anotherBike = someBike
if anotherBike === someBike {
    print("Both refer to the same instance")
}

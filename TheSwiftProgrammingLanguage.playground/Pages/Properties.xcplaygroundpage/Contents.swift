// Kevin Mattappally
// The Swift Programming Language

import Foundation

// PROPERTIES

// stored properties
struct Sequence {
    var increment: Int
    var firstValue: Int
    var numberOfValues: Int
}

var firstSequence = Sequence(increment: 2, firstValue: 1, numberOfValues: 3) // 1, 3, 5
firstSequence.firstValue = 2 // 2, 4, 6

let fixedSequence = Sequence(increment: 4, firstValue: 4, numberOfValues: 3) //4 , 8, 12
//fixedSequence.increment = 4 ERROR SINCE INITIALIZED AS CONSTANT

// lazy stored properties (inital value is not calculated until the first time it is used)
class Photo {
    var filename: String = "ball.png"
}

class PhotoManger {
    lazy var photo = Photo()
    var megabytes: Int = 3
}

let manager = PhotoManger()
manager.megabytes = 2 // photo instance hasn't been created
manager.photo.filename = "goal.png" // photo instance now created

// computed properties
struct Point {
    var x: Double, y: Double
}

struct Size {
    var radius: Double
}

struct Circle {
    var origin = Point(x:2, y:2)
    var size = Size(radius: 6)
    var circumference: Double { // read only computer properties
        return size.radius * 2 * 3.141592
    }
    var center: Point {
        get {
            let centerX = origin.x + size.radius
            let centerY = origin.y + size.radius
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) { // default name is newValue
            origin.x = newCenter.x - size.radius
            origin.y = newCenter.y - size.radius
        }
    }
}

var example = Circle()
example.origin.x = 3
example.origin.y = 5
example.center.x
example.center.y

// property observers (willSet, didSet)
class Foods {
    var fruit: String = "apple" {
        willSet(newFruit) {
            print("About to switch fruit to \(newFruit)")
        }
    }
    var vegetables: String = "spinach" {
        didSet(newVeggie) {
            print("Switched veggie to \(newVeggie)")
        }
    }
}

let food = Foods()
food.fruit = "cherry"
food.vegetables = "carrot"

// type properties (static)
struct Volume {
    static var max = 10
    static var min = 3
}
Volume.max = 12
Volume.min = 6


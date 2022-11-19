import UIKit

// protocols, extensions, and protocol extensions
protocol Identifiablee {
    var id: String { get set }
}

struct User: Identifiablee {
    var id: String
}

func displayID(thing: Identifiablee) {
    print("My ID is \(thing.id)")
}

// Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

// Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()

protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Truck: Identifiable {
    var id: String
}

let twostraws = Truck(id: "twostraws")
twostraws.identify()

/**
- Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
- You can build protocols on top of other protocols, similar to classes.
- Extensions let you add methods and computed properties to specific types such as Int.
- Protocol extensions let you add methods and computed properties to protocols.
- Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
 */

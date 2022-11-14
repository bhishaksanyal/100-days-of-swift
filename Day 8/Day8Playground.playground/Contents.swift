import UIKit

// structs, properties, and methods
struct Sports {
    var name: String
}

var tennis = Sports(name: "Tennis")
print(tennis.name)
tennis.name = "Lawn Tennis"
print(tennis.name)

// Computed properties
struct User {
    var name: String
    var isLoggedIn: Bool
    
    var profile: String {
        if isLoggedIn {
            return "Show profile"
        } else {
            return "Show login screen"
        }
    }
}

var newUser = User(name: "Bhishak", isLoggedIn: false)
print(newUser.profile)

// Property observers
struct Loading {
    var task: String
    var progress: Int {
        willSet {
            print("Updating progress...")
        }
        didSet {
            print("\(task) is \(progress)% complete!")
            if progress == 100 {
                print("Task Completed!")
            }
        }
    }
}

var loader = Loading(task: "Loading data ...", progress: 0)
loader.progress = 30
loader.progress = 50
loader.progress = 80
loader.progress = 100

// Methods - Functions inside structs, enums, and classes are called methods
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
print(london.collectTaxes())

// Mutating methods
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()

// Properties and methods of strings
let string = "This is a sample string!"
print(string.count)
print(string.customMirror)
print(string.debugDescription)
print(string.endIndex)
print(string.sorted())
print(string.uppercased())
print(string.hasPrefix("Do"))

// Properties and methods of arrays
var friends: [String] = ["Alex", "Moody"]
friends.count
friends.append("Sourav")
friends.sorted()
friends.capacity
friends.firstIndex(of: "Moody")
friends.remove(at: friends.firstIndex(of: "Moody")!)
print(friends)

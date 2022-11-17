import UIKit

// classes and inheritance
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let husky = Dog(name: "Zoro", breed: "Husky")

// Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        super.makeNoise()
        print("Mew!")
    }
}

// Overriding methods
let poodle = Poodle(name: "Zoro")
poodle.makeNoise()

// Copying objects
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)
struct SingerStruct {
    var name = "Taylor Swift"
}
var singerStruct = SingerStruct()
print(singerStruct.name)
var singerStructCopy = singerStruct
singerStructCopy.name = "Bhishak Sanyal"
print(singerStructCopy.name)

// De-initializers
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

/**
- Classes and structs are similar, in that they can both let you create your own types with properties and methods.
- One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
- You can mark a class with the final keyword, which stops other classes from inheriting from it.
- Method overriding lets a child class replace a method in its parent class with a new implementation.
- When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
- Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
- Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
 */


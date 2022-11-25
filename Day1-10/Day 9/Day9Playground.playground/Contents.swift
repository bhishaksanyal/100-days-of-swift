import UIKit

// access control, static properties, and laziness
struct User {
    var username: String?
    var firstname: String
    var lastname: String
    
    init() {
        username = "Anonymous"
        firstname = "First"
        lastname = "Last"
        print("Creating a new user")
    }
}

var user = User()
user.username = "twostraws"

// Referring to the current instance
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
var person = Person(name: "Bhishak")

// Lazy properties
struct FamilyTree {
    init() {
        print("Creating a family tree!")
    }
}

struct Member {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Member(name: "Ed")
ed.familyTree


// Static properties and methods
struct Student {
    static var studentId = 1
    var name: String
    
    init(name: String) {
        self.name = name
        Student.studentId += 1
        print("Student \(name) is registered!")
    }
}

print(Student.studentId)
var edy = Student(name: "Edy")
print(Student.studentId)
var taylor = Student(name: "Taylor")
print(Student.studentId)
var kanya = Student(name: "Kanya")
print(Student.studentId)

// Access control
struct Person1 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let ed1 = Person1(id: "12345")

/**
- You can create your own types using structures, which can have their own properties and methods.
- You can use stored properties or use computed properties to calculate values on the fly.
- If you want to change a property inside a method, you must mark it as mutating.
- Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
- Use the self constant to refer to the current instance of a struct inside a method.
- The lazy keyword tells Swift to create properties only when they are first used.
- You can share properties and methods across all instances of a struct using the static keyword.
- Access control lets you restrict what code can use properties and methods.
 */

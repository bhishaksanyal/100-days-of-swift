import UIKit

// Closures, part two
func travel(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I have arrived")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//travel2 { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}

// Shorthand parameter names
travel2 {
    "I'm going to \($0) in my car"
}

// Closures with multiple parameters
func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel3 { (place: String, speed: Int) -> String in
    "I'm going to \(place) at \(speed) miles per hour."
}

// Returning closures from functions
//func returnClosure() -> (String) -> Void {
//    return {
//        print("I'm going to \($0)")
//    }
//}
//
//let result = returnClosure()
//result("India")

// Capturing values
func returnClosure() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let outcome = returnClosure()
outcome("India")
outcome("India")
outcome("India")
outcome("India")

/**
- You can assign closures to variables, then call them later on.
- Closures can accept parameters and return values, like regular functions.
- You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
- If the last parameter to your function is a closure, you can use trailing closure syntax.
- Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
- If you use external values inside your closures, they will be captured so the closure can refer to them later.
 */

import UIKit

// Closures, part one

let driving = {
    print("I'm driving in my car")
}
driving()

// Accepting parameters
let drivingAgain = { (place: String) in
    print("I'm driving to \(place) today!")
}

drivingAgain("London")

// Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm driving with return to \(place) today!"
}
print(drivingWithReturn("China"))

// Closures as parameters
func travel(action: () -> Void) {
    print("Wake Up!")
    action()
    print("Go to sleep!")
}
travel(action: driving)

// Trailing closure syntax
func football(game: () -> Void) {
    print("Getting ready!")
    game()
    print("Playtime over")
}

football {
    print("Playing football inside a closure")
}

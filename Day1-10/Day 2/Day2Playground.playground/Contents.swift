import UIKit

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

// Sets
// Items are stored in any order
// Duplicates are not stored, they are ignored

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

// Tuples
// You cannot add or remove item from a tuple they are fixed in size
// You cannot change the type of values in a tuple
// You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.

var name = (first: "Taylor", last: "Swift")
name.0
name.first
name.first = "Bhishak"
name.first
//name.first = 25 error: Cannot assign value of type 'Int' to type 'String'

// Dictionary
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

// Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Charlotte", default: "Unknown"]

// Empty collections

var teams = [String: String]()

teams["Paul"] = "Red"
var results = [Int]()
var words = Set<String>()
var numbers = Set<Int>()

// Valid!
var scores = Dictionary<String, Int>()
var results1 = Array<Int>()

// Enum
enum Result {
    case success
    case failure
}

// Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)

/**
 - Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
 - Arrays store items in the order you add them, and you access them using numerical positions.
 - Sets store items without any order, so you can’t access them using numerical positions.
 - Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
 - Dictionaries store items according to a key, and you can read items using those keys.
 - Enums are a way of grouping related values so you can use them without spelling mistakes.
 - You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
 */

import UIKit


// Varables
var greeting = "Hello, playground"
var newVar = "This is a new variable"

// Type safety string and integer
var strString = "New string"
var strInt = 899_999_99989

// Not possible since swift is strongly typed language
//strString = 902
//strInt = "Changing to string"

// Multiline strings
var longStr = """
This is a
new long string
which is big
"""

var anotherLongStr = """
This is another \
way of writing \
multiline strings
"""

// Double and booleans
var pie = 3.141
var isBoolean = true

// String interpolation
var score = 88
var result = "Your final score is \(score)"

// Constant
let taylor = "swift"

// Instead of using swift type inference mention the type
let name: String = "Bhishak"
let age: Int = 29
let isEmployed: Bool = true
let compensation: Double = 0.111


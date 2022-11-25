import UIKit

// Day 3
let one = 13
let two = 4

let sum = 13 + 4
let difference = 13 - 4
let multiply = 13 * 4
let divide = 13/4
let remainder = 13 % 4

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

/**
- Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
- There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
- You can use if, else, and else if to run code based on the result of a condition.
- Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
- If you have multiple conditions using the same value, it’s often clearer to use switch instead.
- You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
 */

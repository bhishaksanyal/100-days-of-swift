import UIKit

// Loops, Loops and more Loops

// For in loop
for number in 1...10 {
    if (number % 2 == 0) {
        print("Even number \(number)")
    } else {
        continue
    }
}

let albums = ["Pink Floyed", "Linkin Park", "Green Day", "Alan Walker"]

for album in albums {
    print("Listen to \(album) on apple music")
}

// For unused value looping
for _ in 1...5 {
    print("Not using the loop value")
}

// while loop
var number = 1

while number <= 10 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// Repeat loops
var number1 = 1

repeat {
    print(number1)
    number1 += 1
} while number1 <= 20

print("Ready or not, here I come!")

// Nested loop
var scanner = 0
outerLoop: for i in 1...10 {
innerloop: for j in 1...10 {
anotherloop: for k in 1...10 {
    let product = i * j * k
    scanner += 1
    print ("\(i) * \(j) * \(k) is \(product)")
    if product == 50 {
        print("It's a bullseye!")
        break outerLoop
    }
}
}
}

print("Scanner total = \(scanner) rows")

/**
- Loops let us repeat code until a condition is false.
- The most common loop is for, which assigns each item inside the loop to a temporary constant.
- If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
- There are while loops, which you provide with an explicit condition to check.
- Although they are similar to while loops, repeat loops always run the body of their loop at least once.
- You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
- You can skip items in a loop using continue.
- Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
 */

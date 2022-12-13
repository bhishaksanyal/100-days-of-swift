import UIKit

// Functions
func greetings() {
    print("Hello! Welcome to a function")
}

func greetUser(of name: String) {
    print("Welcome user with name \(name)")
}

func whichUser(_ name: String) -> String {
    return "Current user is \(name)"
}

greetings()
greetUser(of: "Ryoma Echizen")
print(whichUser("Leo"))

func getWeatherStatus(_ weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status = getWeatherStatus("sunny")
print(status ?? "No Value")

var items = ["James", "John", "Sally"]
func position(of string: String, in array: [String]) -> Int {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }

    return 0
}

let jamesPosition = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sallyPosition = position(of: "Sally", in: items)
let bobPosition = position(of: "Bob", in: items)

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(String(describing: album))")

let newAlbum = albumReleased(year: 2000) ?? "unknown"
print("The album is \(newAlbum)")


enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 5))

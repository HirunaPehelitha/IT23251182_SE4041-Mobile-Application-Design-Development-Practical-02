// Exercise 05 - switch and Ranges

let grade = "B"

switch grade {
case "A":
    print("Excellent")
case "B", "C":
    print("Good")
case "D":
    print("Needs Work")
default:
    print("Unknown Grade")
}

// Using Ranges in a Switch
let mark = 68

switch mark {
case 75...100:
    print("Distinction")
case 50..<75:
    print("Pass")
case 0..<50:
    print("Fail")
default:
    print("Invalid Mark")
}

// 75...100 includes both 75 and 100
// 50..<75  includes 50 but stops before 75

// Activity 5 - Temperature Description
print("--- Activity 5 ---")

func describeTemperature(_ temperature: Int) {
    switch temperature {
    case ..<0:
        print("\(temperature) -> Freezing")
    case 0...15:
        print("\(temperature) -> Cold")
    case 16...25:
        print("\(temperature) -> Moderate")
    case 26...35:
        print("\(temperature) -> Warm")
    default:
        print("\(temperature) -> Hot")
    }
}

let temperature = 27
describeTemperature(temperature)

// Tested with at least three temperatures
describeTemperature(-5)
describeTemperature(12)
describeTemperature(40)


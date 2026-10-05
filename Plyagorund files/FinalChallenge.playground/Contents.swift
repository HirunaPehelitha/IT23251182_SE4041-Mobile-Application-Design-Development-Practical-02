//: # Final Challenge – Student Performance Manager
//:
//: SE4041 – Mobile Application Design & Development · Practical 02


// Part A - Store Student Marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

// Part C - Determine Grade (switch + ranges)
func grade(for mark: Int) -> String {
    switch mark {
    case 80...100:
        return "A"
    case 75..<80:
        return "A-"
    case 70..<75:
        return "B+"
    case 65..<70:
        return "B"
    case 60..<65:
        return "B-"
    case 55..<60:
        return "C+"
    case 45..<55:
        return "C"
    case 40..<45:
        return "C-"
    case 0..<40:
        return "F"
    default:
        return "Invalid"
    }
}

var passedStudents: [String] = []       // Part D
var gradesAwarded: Set<String> = []     // Part E
var passCount = 0                       // Additional Challenge
var failCount = 0

print("==================================")
print("STUDENT PERFORMANCE")
print("==================================")

// Part B - Display All Students (sorted so the order is predictable)
for name in studentMarks.keys.sorted() {
    let mark = studentMarks[name] ?? 0
    let studentGrade = grade(for: mark)

    print("\(name) - \(mark) - \(studentGrade)")

    gradesAwarded.insert(studentGrade)

    if mark >= 50 {
        passedStudents.append(name)
        passCount += 1
    } else {
        failCount += 1
    }
}

// Part D - Passed Students
print("----------------------------------")
print("Passed Students:")
for name in passedStudents {
    print(name)
}

// Part E - Unique Grades
print("----------------------------------")
print("Grades Awarded:")
for awarded in gradesAwarded.sorted() {
    print(awarded)
}

// Part F - Average Mark
print("----------------------------------")
let total = studentMarks.values.reduce(0, +)
let average = Double(total) / Double(studentMarks.count)
print("Class Average: \(average)")

// Part G - Highest and Lowest Marks
print("Highest Mark: \(studentMarks.values.max()!)")
print("Lowest Mark: \(studentMarks.values.min()!)")

// ---------- Additional Challenge ----------
print("----------------------------------")

// Search for a Student
let searchName = "Amal"
if let mark = studentMarks[searchName] {
    print("\(searchName)'s mark is \(mark)")
} else {
    print("Student not found")
}

// Count Passes and Fails
print("Passed: \(passCount)")
print("Failed: \(failCount)")


//: # Exercise 06 – Loops
//:
//: SE4041 – Mobile Application Design & Development · Practical 02


// Part A - for-in
for i in 1...5 {
    print("Week \(i)")
}

// Loop Through an Array
let names = ["Amal", "Nimali", "Ruwan"]
for name in names {
    print(name)
}

// Using enumerated()
for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

// Part B - while
var balance = 1000
var week = 0
while balance > 0 {
    balance -= 300
    week += 1
}
print("Ran out in week \(week)")

// Part C - repeat-while (always runs at least once)
var attempts = 0
repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

// break and continue
let sampleMarks = [72, -1, 65, 48, 90]
for mark in sampleMarks {
    if mark < 0 {
        continue        // skip this repetition
    }
    if mark == 90 {
        break           // stop the loop completely
    }
    print(mark)
}

// Activity 6
print("--- Activity 6 ---")
let marks = [72, -1, 55, 43, 90, 88]

for mark in marks {
    if mark < 0 {
        continue                        // 1. ignore negative marks
    }
    if mark == 90 {
        print("Found 90 - stopping")
        break                           // 2. stop when 90 is found
    }
    print("Processed mark: \(mark)")    // 3. print every valid mark
}

// Putting Collections and Control Flow Together
print("--- Combined Example ---")
let studentNames = ["Amal", "Nimali", "Ruwan", "Sanduni"]
let studentMarks = [72, 45, 48, 90]
let passMark = 50
var passedStudents: [String] = []

for (index, mark) in studentMarks.enumerated() {
    if mark >= passMark {
        passedStudents.append(studentNames[index])
        print("\(studentNames[index]): \(mark) - Pass")
    } else {
        print("\(studentNames[index]): \(mark) - Fail")
    }
}

print("Passed Students: \(passedStudents)")


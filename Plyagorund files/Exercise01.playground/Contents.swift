//: # Exercise 01 – Arrays
//:
//: SE4041 – Mobile Application Design & Development · Practical 02


// Step 1 - Create an Array
var marks = [72, 65, 48, 90, 55]
print(marks)

// Step 2 - Access Array Elements
print(marks[0])
print(marks[2])
print(marks[4])

// Step 3 - Useful Array Properties
print(marks.count)
print(marks.isEmpty)
print(marks.first as Any)
print(marks.last as Any)

// Step 4 - Modify an Array
marks[2] = 52
print(marks)

marks.append(88)
marks.insert(60, at: 1)
print(marks)

marks.removeLast()
marks.remove(at: 1)
print(marks)

// Step 5 - Useful Array Methods
let fixedMarks = [72, 65, 48, 90, 55]
print(fixedMarks.max()!)
print(fixedMarks.min()!)
print(fixedMarks.contains(90))
print(fixedMarks.sorted())
print(fixedMarks.sorted(by: >))

let total = fixedMarks.reduce(0, +)
print(total)

let average = Double(total) / Double(fixedMarks.count)
print(average)

// Activity 1 - Five modules I am studying
print("--- Activity 1 ---")
var modules = ["SE4041", "SE4040", "IE4062", "SE4020", "IE4722"]

print(modules)                          // 1. entire array
print(modules.first!)                   // 2. first module
print(modules.last!)                    // 3. last module
modules.append("IE4790")                // 4. add a new module
print(modules.count)                    // 5. number of modules
print(modules.contains("SE4041"))       // 6. does SE4041 exist


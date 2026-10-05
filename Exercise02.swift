// Exercise 02 - Sets

// Step 1 - Create a Set
var towns: Set = ["Malabe", "Kandy", "Galle"]
print(towns)

// Step 2 - Insert Values
towns.insert("Jaffna")
towns.insert("Kandy")     // duplicate - ignored
print(towns)
print(towns.count)

// Step 3 - Check Membership
print(towns.contains("Kandy"))
print(towns.contains("Colombo"))

// Step 4 - Remove an Item
towns.remove("Galle")
print(towns)

// Step 5 - Set Operations
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print(swiftClass.union(kotlinClass).sorted())
print(swiftClass.intersection(kotlinClass).sorted())
print(swiftClass.subtracting(kotlinClass).sorted())
print(swiftClass.symmetricDifference(kotlinClass).sorted())

// Activity 2
print("--- Activity 2 ---")
let mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Ruwan", "Sanduni"]
let gameTechnologyStudents: Set = ["Nimali", "Sanduni", "Kasun", "Tharindu"]

// 1. All students
print("All students: \(mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())")

// 2. Students taking both modules
print("Both modules: \(mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())")

// 3. Students taking only Mobile Development
print("Only Mobile Development: \(mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())")

// 4. Students taking only one of the modules
print("Only one module: \(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())")


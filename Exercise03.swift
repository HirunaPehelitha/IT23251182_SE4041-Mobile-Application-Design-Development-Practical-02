// Exercise 03 - Dictionaries

// Step 1 - Create a Dictionary
var marks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(marks)

// Step 2 - Retrieve a Value (returns an optional)
print(marks["Amal"] as Any)

// Step 3 - Safely Retrieve a Value with nil-coalescing
print(marks["Amal"] ?? 0)
print(marks["Kasun"] ?? 0)

// Step 4 - Use Optional Binding
if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// Step 5 - Add, Update and Remove Values
marks["Sanduni"] = 90   // add
marks["Amal"] = 75      // update
marks["Ruwan"] = nil    // remove
print(marks)

// Activity 3 - Phone Book
print("--- Activity 3: Phone Book ---")
var phoneBook = [
    "Amal": "0771234567",
    "Nimali": "0712345678",
    "Ruwan": "0763456789",
    "Sanduni": "0754567890"
]
print(phoneBook)

// 1. Add a new contact
phoneBook["Kasun"] = "0785678901"

// 2. Update one phone number
phoneBook["Amal"] = "0779999999"

// 3. Remove one contact
phoneBook["Ruwan"] = nil

print(phoneBook)

// 4. Search for a contact using if let
let searchName = "Nimali"
if let number = phoneBook[searchName] {
    print("\(searchName): \(number)")
} else {
    print("Contact not found")
}

// 5. Display "Contact not found" when the key does not exist
let missingName = "Ruwan"
if let number = phoneBook[missingName] {
    print("\(missingName): \(number)")
} else {
    print("Contact not found")
}


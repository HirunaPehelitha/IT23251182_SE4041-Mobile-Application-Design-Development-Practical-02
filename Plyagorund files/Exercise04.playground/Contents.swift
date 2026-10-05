//: # Exercise 04 – if / else if / else
//:
//: SE4041 – Mobile Application Design & Development · Practical 02


let mark = 68

if mark >= 75 {
    print("Distinction")
} else if mark >= 50 {
    print("Pass")
} else {
    print("Fail")
}

// Activity 4 - Attendance
print("--- Activity 4 ---")

func describeAttendance(_ attendance: Int) {
    if attendance >= 90 {
        print("\(attendance) -> Excellent attendance")
    } else if attendance >= 80 {
        print("\(attendance) -> Good attendance")
    } else if attendance >= 70 {
        print("\(attendance) -> Acceptable attendance")
    } else {
        print("\(attendance) -> Low attendance")
    }
}

let attendance = 78
describeAttendance(attendance)

// Tested with different values
describeAttendance(95)
describeAttendance(84)
describeAttendance(61)


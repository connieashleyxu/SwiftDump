import UIKit

var greeting = "Hello, playground"

//let courseCode = 342
//var topic: String? = "Swift" 
//let school = "ITP" 
//// set message to "ITP 342 teaches Swift this semester"
//
//let message = school + " " + String(courseCode) + " teaches " + topic! + " this semester"

func sum (_ numbers: Double...) -> Double {
     var total: Double = 0
     for number in numbers {
           total += number
     }
    return total
}


let result1 = sum(1.0, 2.0, 3.0, 4.0, 5.0)
let result2 = sum(1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0)

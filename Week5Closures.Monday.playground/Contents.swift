import UIKit

import Foundation

//CLOSURE: piece of executabe block of code
    //a func is a closure
    //closures are reference types
    //CLOSURE EXPRESSION: way to define a block of code; does NOT have name

//own func to see how we are sorting the vals
func ourOwnSortFunction(s1: String, s2: String) -> Bool {
    return s1 < s2
}

var name = ["Connie", "Adam", "Jane", "Jelly"]

//Sorting example
//ALL FOLLOWING FUNC DO THE SAME THINGS

//1. sort provided by iOS
//takes a func as an input
//name.sort(by: ourOwnSortFunction(s1:s2:))

//2. better because defininf func where it's used (bc it's only specfically used here; no where else)
//name.sort(by: { (s1: String, s2: String) -> Bool in
//    return s1 < s2
//})

//3. TYPE INFERENCE
//name.sort(by: { (s1, s2) in
//    return s1 < s2
//})

//4. SINGLE EXPRESSION CLOSURES
//name.sort(by: {(s1, s2) in s1 < s2})

//5. TRAILING CLOSURE SYNTAX
//name.sort{(s1, s2) in s1 < s2 }

//6. SHORTHAND ARG NAMES (if don't care about names of param, don't need to define)
name.sort {$0 < $1}

print(name)

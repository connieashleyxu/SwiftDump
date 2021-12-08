//
//  Calculator.swift
//  Week6.Monday
//
//  Created by Connie Xu on 9/28/21.
//

import Foundation

//remember to check target membership in code to ensure that tests can run
class Calculator {
    func add(x: Int, y: Int) -> Int {
        print("\(#function)  \(x) + \(y)")
        
        return x + y
    }
    
    func subtract(x: Int, y: Int) -> Int {
        print("\(#function)  \(x) - \(y)")
        
        return x - y
    }
}

//
//  Week6_MondayTests.swift
//  Week6.MondayTests
//
//  Created by Connie Xu on 9/28/21.
//

import XCTest
@testable import Week6_Monday

//UNIT TESTING
//helps quality control

//system under test (SUT) (frameworks include Jest)
    //fastest and least expensive
//Integration test (frameworks include Jest)
    //more time
//UI Test (test end like the user)
    //expensive and slow
//how to split up test
    //10% UI; 20% integration; 70% Unit Test

//Test types
    //functional test (logic/working as expected)
    //performance test (how fast is code)
    //User Interface test (visual; auto layout)

//cmd+n creates new unit test case

//categorize test inside test suite (CalculatorTests: XCTestCase)
class CalculatorTests: XCTestCase {

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }

    //name of func needs to prefixed with the word "test"
    
    var calculator: Calculator!
    
    //need to call setup before everything
    //delete class
    override func setUp() {
        self.calculator = Calculator()
        //initialize objects
    }
    
    override func tearDown() {
        //after each test is executed
        //clean database; clear cache
    }
    func testAdd() throws {
        
        //1. setting the context
        //let calculator = Calculator()
        //done in setup
        
        //2. perform action
        let result = calculator.add(x:20, y:40)
        
        //3. verify expected result matches actual result
        XCTAssertEqual(result, 60)
    }
    
    func testSubtract() throws {
        
        //1. setting the context
        //let calculator = Calculator()
        //done in setup
        
        //2. perform action
        let result = calculator.subtract(x:20, y:40)
        
        //3. verify expected result matches actual result
        XCTAssertEqual(result, -20)
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}

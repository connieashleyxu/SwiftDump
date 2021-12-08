//
//  Week6_Wednesday_RandomQuoteGeneratorUITestsLaunchTests.swift
//  Week6.Wednesday.RandomQuoteGeneratorUITests
//
//  Created by Connie Xu on 9/29/21.
//

import XCTest

class Week6_Wednesday_RandomQuoteGeneratorUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}

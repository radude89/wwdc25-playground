//
//  HelloWorld26UITests.swift
//  HelloWorld26UITests
//
//  Created by Radu Dan on 10.06.2025.
//

import XCTest

final class HelloWorld26UITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.activate()
        let element = app.windows/*@START_MENU_TOKEN@*/.firstMatch/*[[".containing(.other, identifier: nil).firstMatch",".firstMatch"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        element.tap()
        element.swipeUp()
        element.tap()

        let element2 = app/*@START_MENU_TOKEN@*/.images["globe"]/*[[".otherElements",".images[\"Globe\"]",".images[\"globe\"]",".images"],[[[-1,2],[-1,1],[-1,3],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.firstMatch
        element2.swipeUp()
        element.swipeUp()
        element2.tap()
        element2.doubleTap()
        element/*@START_MENU_TOKEN@*/.swipeRight()/*[[".swipeUp()",".swipeRight()"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/

        let element3 = app/*@START_MENU_TOKEN@*/.staticTexts["Hello, world!"]/*[[".otherElements.staticTexts[\"Hello, world!\"]",".staticTexts",".staticTexts[\"Hello, world!\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch
        element3.tap()
        element2.tap()
        element3.tap()
        XCUIDevice.shared.press(.home)

        let springboardApp = XCUIApplication(
            bundleIdentifier: "com.apple.springboard"
        )
        springboardApp/*@START_MENU_TOKEN@*/.images["record.circle"]/*[[".otherElements",".images[\"Screen Recording\"]",".images[\"record.circle\"]",".images"],[[[-1,2],[-1,1],[-1,3],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()

    }
}

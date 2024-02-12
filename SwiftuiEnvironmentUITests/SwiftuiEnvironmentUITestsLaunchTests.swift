//
//  SwiftuiEnvironmentUITestsLaunchTests.swift
//  SwiftuiEnvironmentUITests
//
//  Created by Renan Diniz on 12/02/24.
//

import XCTest

final class SwiftuiEnvironmentUITestsLaunchTests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }
    
    func testAppLaunchesToHomeView() throws {
        let app = XCUIApplication()
        
        // Assuming "Hello, SwiftUI!" text appears on the home view
        let helloSwiftUIText = app.staticTexts["Hello, SwiftUI!"]
        XCTAssertTrue(helloSwiftUIText.exists, "The app did not launch to the expected home view.")
        
        // Optionally, verify other UI elements specific to the home view
        // For example, checking for the "Go to Settings" button
        let goToSettingsButton = app.buttons["Go to Settings"]
        XCTAssertTrue(goToSettingsButton.exists, "The 'Go to Settings' button was not found on the home view.")
    }
}

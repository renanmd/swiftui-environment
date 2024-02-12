//
//  SwiftuiEnvironmentUITests.swift
//  SwiftuiEnvironmentUITests
//
//  Created by Renan Diniz on 12/02/24.
//

import XCTest

final class SwiftuiEnvironmentUITests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }
    
    func testToggleDarkMode() throws {
        let app = XCUIApplication()
        
        // Assuming you have a navigation link to the SettingsView with the identifier "Go to Settings"
        app.buttons["Go to Settings"].tap()
        
        // Assuming the toggle has an accessibility identifier set as "Dark Mode Toggle"
        let darkModeToggle = app.switches["Dark Mode Toggle"]
        
        // Check if the toggle is initially off
        XCTAssertEqual(darkModeToggle.value as? String, "0")
        
        // Tap the toggle to turn on Dark Mode
        darkModeToggle.tap()
        
        // Verify the toggle is now on
        XCTAssertEqual(darkModeToggle.value as? String, "1")
        
        // Optionally, navigate back and verify changes in the UI if there's a visible change when toggling dark mode
    }
}

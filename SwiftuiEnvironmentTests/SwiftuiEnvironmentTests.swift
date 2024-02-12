//
//  SwiftuiEnvironmentTests.swift
//  SwiftuiEnvironmentTests
//
//  Created by Renan Diniz on 12/02/24.
//

import XCTest
@testable import SwiftuiEnvironment

class ThemeSettingsTests: XCTestCase {

    var themeSettings: ThemeSettings!

    override func setUpWithError() throws {
        // Set up your environment before each test
        themeSettings = ThemeSettings()
    }

    override func tearDownWithError() throws {
        // Clean up your environment after each test
        themeSettings = nil
    }

    func testThemeSettings_Initialization_DefaultsToLightMode() throws {
        // Test if the theme settings default to light mode
        XCTAssertFalse(themeSettings.isDarkMode, "ThemeSettings should initialize with isDarkMode set to false")
    }

    func testThemeSettings_Toggle_IsDarkModeTogglesCorrectly() throws {
        // Initial state should be false (light mode)
        XCTAssertFalse(themeSettings.isDarkMode, "Initially, isDarkMode should be false")

        // Toggle to dark mode
        themeSettings.isDarkMode.toggle()
        XCTAssertTrue(themeSettings.isDarkMode, "After toggling, isDarkMode should be true")

        // Toggle back to light mode
        themeSettings.isDarkMode.toggle()
        XCTAssertFalse(themeSettings.isDarkMode, "After a second toggle, isDarkMode should be false")
    }
}

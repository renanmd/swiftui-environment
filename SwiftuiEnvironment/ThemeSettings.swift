//
//  ThemeSettings.swift
//  SwiftuiEnvironment
//
//  Created by Renan Diniz on 12/02/24.
//

import SwiftUI

// Define a class to hold the theme setting
class ThemeSettings: ObservableObject {
    @Published var isDarkMode: Bool = false
}

// A view that toggles the theme
struct SettingsView: View {
    @EnvironmentObject var themeSettings: ThemeSettings
    
    var body: some View {
        Toggle(isOn: $themeSettings.isDarkMode) {
            Text("Dark Mode")
        }
        .accessibilityIdentifier("Dark Mode Toggle")
        .padding()
    }
}

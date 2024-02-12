//
//  SwiftuiEnvironmentApp.swift
//  SwiftuiEnvironment
//
//  Created by Renan Diniz on 12/02/24.
//

import SwiftUI

// The main App struct that sets up the environment
@main
struct MyThemeApp: App {
    @StateObject var themeSettings = ThemeSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeSettings)
        }
    }
}

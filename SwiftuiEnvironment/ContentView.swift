//
//  ContentView.swift
//  SwiftuiEnvironment
//
//  Created by Renan Diniz on 12/02/24.
//

import SwiftUI

// The main content view that adapts based on the theme
struct ContentView: View {
    @EnvironmentObject var themeSettings: ThemeSettings
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, SwiftUI!")
                    .padding()
                
                NavigationLink("Go to Settings", destination: SettingsView())
            }
            .navigationBarTitle("Home", displayMode: .large)
        }
        .environment(\.colorScheme, themeSettings.isDarkMode ? .dark : .light)
    }
}

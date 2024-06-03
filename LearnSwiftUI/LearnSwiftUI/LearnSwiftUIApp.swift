//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by 김은혜 on 6/3/24.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    
    @State private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appState)
        }
    }
}

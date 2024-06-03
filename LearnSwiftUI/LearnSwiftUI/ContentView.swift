//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by 김은혜 on 6/3/24.
//

import SwiftUI
import Observation

@Observable
class AppState {
    var isOn: Bool = false
}

struct LightBulbView: View {
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        
        @Bindable var appState = appState
        
        VStack {
            Image(systemName: appState.isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(appState.isOn ? .yellow: .black)
            
            Toggle("IsOn", isOn: $appState.isOn)
            
//            Button("Toggle") {
//                appState.isOn.toggle()
//            }
        }
    }
}

struct LightRoomView: View {
    
    var body: some View {
        LightBulbView()
    }
}

struct ContentView: View {
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        VStack {
            LightRoomView()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appState.isOn ? .black : .white)
    }
}

#Preview {
    ContentView()
        .environment(AppState())
}

//
//  ContentView.swift
//  Onboarding
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    
    var body: some View {
        TabView {
            Text("🏡 Home Screen")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("🔖 Bookmark Screen")
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Bookmark")
                }
            Text("⚙️ Settings Screen")
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
        .fullScreenCover(isPresented: .constant(!hasSeenOnboarding),
                         content: {
            let onboardingContentManager = OnboardingContentManagerImplementation()
            
            OnboardingScreenView(manager: onboardingContentManager) {
                hasSeenOnboarding = true
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

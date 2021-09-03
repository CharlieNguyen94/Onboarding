//
//  OnboardingScreenView.swift
//  OnboardingScreenView
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import SwiftUI

struct OnboardingScreenView: View {
    var body: some View {
        TabView {
            OnboardingView(item: OnboardingItem(title: "1",
                                                content: "",
                                                sfSymbol: ""))
                .tag(0)
            
            OnboardingView(item: OnboardingItem(title: "2",
                                                content: "",
                                                sfSymbol: ""))
                .tag(1)
            
            OnboardingView(item: OnboardingItem(title: "3",
                                                content: "",
                                                sfSymbol: ""))
                .tag(2)
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct OnboardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenView()
    }
}

//
//  OnboardingView.swift
//  OnboardingView
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import SwiftUI

struct OnboardingView: View {
    
    let item: OnboardingItem
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: item.sfSymbol ?? "")
                .padding(.bottom, 50)
                .font(.system(size: 120, weight: .bold))
            
            Text(item.title ?? "")
                .font(.system(size: 32, weight: .bold))
                .multilineTextAlignment(.center)
                .padding(.bottom, 2)
                .foregroundColor(.black)
            
            Text(item.content ?? "")
                .font(.system(size: 12, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 50)
                .foregroundColor(.gray)
            
        }
        .padding(.bottom, 150)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(item: OnboardingItem(title: "Dummy",
                                            content: "Dummy Content",
                                            sfSymbol: "heart"))
    }
}

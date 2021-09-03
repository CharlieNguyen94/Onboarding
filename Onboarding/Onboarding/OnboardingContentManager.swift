//
//  OnboardingContentManager.swift
//  OnboardingContentManager
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import Foundation

protocol OnboardingContentManager {
    var limit: Int { get }
    var items: [OnboardingItem] { get }
    
}

final class OnboardingContentManagerImplementation: OnboardingContentManager {
    
    var limit: Int {
        items.count - 1
    }
    
    let items: [OnboardingItem] = []
    
}

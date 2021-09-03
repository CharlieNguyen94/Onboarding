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
    init(manager: PlistManager)
}

final class OnboardingContentManagerImplementation: OnboardingContentManager {
    
    var limit: Int {
        items.count - 1
    }
    
    var items: [OnboardingItem]
    
    init(manager: PlistManager) {
        self.items = manager.convert(plist: "OnboardingContent")
    }
}

//
//  OnboardingContentMockImplementation.swift
//  OnboardingUnitTests
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import Foundation
@testable import Onboarding

class OnboardingContentMockImplementation: OnboardingContentManager {
    var items: [OnboardingItem]
    
    var limit: Int {
        items.count - 1
    }
    
    required init(manager: PlistManager) {
        self.items = manager.convert(plist: "FruitLoops")
    }
}

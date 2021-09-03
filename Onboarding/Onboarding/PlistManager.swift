//
//  PlistManager.swift
//  PlistManager
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import Foundation

protocol PlistManager {
    func convert(plist fileName: String) -> [OnboardingItem]
}

struct PlistManagerImplementation: PlistManager {
    func convert(plist fileName: String) -> [OnboardingItem] {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "plist"),
              let data = try? Data(contentsOf: url),
              let items = try? PropertyListDecoder().decode([OnboardingItem].self, from: data) else {
                  return []
              }
        
        return items
    }
}

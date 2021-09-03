//
//  OnboardingItem.swift
//  OnboardingItem
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import Foundation

struct OnboardingItem: Identifiable {
    var id = UUID()
    var title: String?
    var content: String?
    var sfSymbol: String?
}

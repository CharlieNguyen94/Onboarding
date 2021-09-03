//
//  Asset.swift
//  Onboarding
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import Foundation

enum AssetType {
    case sfSymbol
    case xcasset
}

struct Asset {
    let name: String
    let type: AssetType
}

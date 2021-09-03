//
//  PlistTests.swift
//  OnboardingUnitTests
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import XCTest
@testable import Onboarding

class PlistTests: XCTestCase {
    
    private var manager: PlistManagerImplementation!
    
    override func setUpWithError() throws {
        manager = PlistManagerImplementation()
    }
    
    override func tearDownWithError() throws {
        manager = nil
    }
    
    func test_successful_decoding_onboarding_plist() {
        XCTAssertEqual(manager.convert(plist: "OnboardingContent").count, 4)
    }

    func test_unsuccessful_decoding_onboarding_plist() {
        XCTAssertEqual(manager.convert(plist: "LuckyCharms").count, 0)
    }
}

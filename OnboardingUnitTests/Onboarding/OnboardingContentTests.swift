//
//  OnboardingContentTests.swift
//  OnboardingUnitTests
//
//  Created by Charlie Nguyen on 03/09/2021.
//

import XCTest
@testable import Onboarding

class OnboardingContentTests: XCTestCase {
    
    private var plistManager: PlistManagerImplementation!
    
    override func setUpWithError() throws {
        plistManager = PlistManagerImplementation()
    }
    
    override func tearDownWithError() throws {
        plistManager = nil
    }
    
    func test_successful_onboarding_decoding() {
        
        let contentManager = OnboardingContentManagerImplementation(manager: plistManager)
        XCTAssertEqual(contentManager.items.count, 4)
    }
    
    func test_unsuccessful_onboarding_decoding() {
        let mock = OnboardingContentMockImplementation(manager: plistManager)
        XCTAssertEqual(mock.items.count, 0)
    }
    
    func test_successful_onboarding_limit() {
        let contentManager = OnboardingContentManagerImplementation(manager: plistManager)
        XCTAssertEqual(contentManager.limit, 3)
    }
    
    func test_unsuccessful_onboarding_limit() {
        let mock = OnboardingContentMockImplementation(manager: plistManager)
        XCTAssertLessThan(mock.limit, 0)
    }
}

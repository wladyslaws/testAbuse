//
//  XCTestAbuseTests.swift
//  XCTestAbuseTests
//
//  Created by Wladyslaw Surala on 29/11/2017.
//  Copyright © 2017 Wladyslaw Surala. All rights reserved.
//

import XCTest
@testable import XCTestAbuse

class XCTestAbuseTests: XCTestCase {

    func testAbuseXCTest() {

        DispatchQueue.global(qos: .userInitiated).async {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                XCTFail()
            }
        }
    }
    
}

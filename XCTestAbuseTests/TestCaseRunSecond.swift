//
//  TestCaseRunSecond.swift
//  XCTestAbuseTests
//
//  Created by Wladyslaw Surala on 29/11/2017.
//  Copyright © 2017 Wladyslaw Surala. All rights reserved.
//

import XCTest
@testable import XCTestAbuse

class XCTestWithExpectationTests: XCTestCase {

    func testWithExpectation() {
        let expectationToFulfill = expectation(description: "expected to be fullfilled")

        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 4) {
            expectationToFulfill.fulfill()
        }
        
        wait(for: [expectationToFulfill], timeout:10)
    }

}

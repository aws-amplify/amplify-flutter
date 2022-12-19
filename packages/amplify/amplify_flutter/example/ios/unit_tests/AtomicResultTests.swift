// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import XCTest
import Flutter
@testable import amplify_flutter_ios

class AtomicResultTests: XCTestCase {
    
    var counter: Int32 = 0
    
    override func setUp() {
        counter = 0
    }
    
    func test_value_is_forwarded() {
        let expected = "value"
        let exp = expectation(description: #function)
        let result: FlutterResult = { (value: Any?) in
            defer { exp.fulfill() }
            guard let strValue = value as? String else {
                XCTFail("Invalid value: \(value ?? "nil")")
                return
            }
            XCTAssertEqual(strValue, expected)
        }
        let atomicResult = AtomicResult(result, #function)
        atomicResult(expected)
        waitForExpectations(timeout: 1)
    }
    
    func test_error_is_forwarded() {
        let expected = FlutterError(code: "code", message: "message", details: nil)
        let exp = expectation(description: #function)
        let result: FlutterResult = { (value: Any?) in
            defer { exp.fulfill() }
            guard let errValue = value as? FlutterError else {
                XCTFail("Invalid value: \(value ?? "nil")")
                return
            }
            XCTAssertEqual(errValue, expected)
        }
        let atomicResult = AtomicResult(result, #function)
        atomicResult(expected)
        waitForExpectations(timeout: 0.1)
    }

    func test_multiple_synchronous_replies_are_not_sent() {
        let result: FlutterResult = { _ in
            OSAtomicIncrement32(&self.counter)
        }
        let atomicResult = AtomicResult(result, #function)
        atomicResult(nil)
        atomicResult(nil)
        let exp = expectation(description: #function)
        DispatchQueue.main.async { [self] in
            XCTAssertEqual(counter, 1)
            exp.fulfill()
        }
        waitForExpectations(timeout: 0.1)
    }
    
    func test_multiple_concurrent_replies_are_not_sent() {
        let result: FlutterResult = { _ in
            OSAtomicIncrement32(&self.counter)
        }
        let atomicResult = AtomicResult(result, #function)
        
        DispatchQueue.global().sync {
            DispatchQueue.concurrentPerform(iterations: 10) { i in
                atomicResult(nil)
            }
        }
        
        let exp = expectation(description: #function)
        DispatchQueue.main.async { [self] in
            XCTAssertEqual(counter, 1)
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 0.2)
    }
}

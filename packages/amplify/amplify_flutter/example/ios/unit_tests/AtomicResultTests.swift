/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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

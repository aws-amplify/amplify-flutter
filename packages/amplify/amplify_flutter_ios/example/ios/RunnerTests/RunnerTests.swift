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
@testable import Amplify
import integration_test

struct IntegrationTestError: Error, LocalizedError {
    let message: String
    
    init(_ message: String) {
        self.message = message
    }
    
    var errorDescription: String? { message }
}

class RunnerTests: XCTestCase {
    
    func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "reset":
            Amplify.reset()
            result(nil)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    override func setUpWithError() throws {
        let rootViewController = UIApplication.shared.delegate?.window??.rootViewController
        guard let flutterViewController = rootViewController as? FlutterViewController else {
            throw IntegrationTestError("Expected FlutterViewController as rootViewController")
        }
        let methodChannel = FlutterMethodChannel(
            name: "amplify_flutter/integ_tests",
            binaryMessenger: flutterViewController.binaryMessenger)
        methodChannel.setMethodCallHandler(self.handle(_:result:))
    }

    func testIntegrationTest() {
        var testResult: NSString?
        let integrationTestIosTest = IntegrationTestIosTest()
        let testPass: Bool = integrationTestIosTest.testIntegrationTest(&testResult)
        XCTAssertTrue(testPass, "\(String(describing: testResult))")
    }

}

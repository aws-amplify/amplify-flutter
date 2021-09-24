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

import Foundation
@testable import Amplify
import XCTest
import Flutter
import integration_test

extension String: Error {}

class RunnerTests: XCTestCase {
    override func setUpWithError() throws {
        let rootViewController: UIViewController = (UIApplication.shared.delegate!.window!!.rootViewController!)
        guard let flutterViewController = rootViewController as? FlutterViewController else {
            throw "expected FlutterViewController as rootViewController."
        }
        guard let binaryMessenger = flutterViewController.engine?.binaryMessenger else {
            throw "No engine for Flutter view."
        }
        let channel = FlutterMethodChannel(name: "integration_tests", binaryMessenger: binaryMessenger)
        channel.setMethodCallHandler(self.handleMethodCall)
    }
    
    private func handleMethodCall(call: FlutterMethodCall, result: FlutterResult) {
        switch call.method {
        case "reset":
            Amplify.reset()
            print("Amplify reset")
            result(nil)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    func testIntegrationTest() {
        var testResult: NSString?
        let integrationTestIosTest = IntegrationTestIosTest()
        let testPass: Bool = integrationTestIosTest.testIntegrationTest(&testResult)
        XCTAssertTrue(testPass, "\(String(describing: testResult))")
    }
}

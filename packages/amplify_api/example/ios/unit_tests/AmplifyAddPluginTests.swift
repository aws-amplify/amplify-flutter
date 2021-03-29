/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import Amplify
import AmplifyPlugins
import AWSCore
import amplify_core

@testable import amplify_api

class AmplifyAddPluginTests: XCTestCase {
    
    var flutterPlugin: SwiftAmplifyApiPlugin = SwiftAmplifyApiPlugin()

    func test_addPlugin_returnsSuccess() throws {
        class MockApiBridge: ApiBridge {
            override func addPlugin(){
            }
        }
        
        flutterPlugin = SwiftAmplifyApiPlugin(bridge: MockApiBridge())
        flutterPlugin.innerHandle(
            method: "addPlugin",
            callArgs: nil,
            result: { (results) in
                XCTAssertEqual(results as! Bool, true)
            }
        )
    }

    func test_addPlugin_throwsError() throws {
        class MockApiBridge: ApiBridge {
            override func addPlugin() throws{
                throw APIError.invalidConfiguration(
                    "errorDescription",
                    "recoverySuggestion")
            }
        }
        
        flutterPlugin = SwiftAmplifyApiPlugin(bridge: MockApiBridge())
        flutterPlugin.innerHandle(
            method: "addPlugin",
            callArgs: nil,
            result: { (results) in
                if let exception = results as? FlutterError {
                    XCTAssertEqual("APIException", exception.code)
                    XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual("errorDescription", errorMap["message"] as? String)
                    XCTAssertEqual("recoverySuggestion", errorMap["recoverySuggestion"] as? String)
                } else {
                    XCTFail()
                }
            }
        )
    }
}

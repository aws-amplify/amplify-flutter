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

@testable import amplify_auth_cognito

class AmplifyAddPluginTests: XCTestCase {
    
    var flutterPlugin: SwiftAuthCognito = SwiftAuthCognito()

    func test_addPlugin_returnsSuccess() throws {
        class MockAuthBridge: AuthCognitoBridge {
            override func addPlugin(){
            }
        }
        flutterPlugin = SwiftAuthCognito(cognito: MockAuthBridge())

        let call = FlutterMethodCall(methodName: "addPlugin", arguments: nil)
        flutterPlugin.handle(call, result: {(result)->Void in
            XCTAssertEqual(result as! Bool, true)
        })
    }

    func test_addPlugin_throwsError() throws {
        class MockAuthBridge: AuthCognitoBridge {
            override func addPlugin() throws{
                throw AuthError.configuration(
                    "errorDescription",
                    "recoverySuggestion")
            }
        }
        
        flutterPlugin = SwiftAuthCognito(cognito: MockAuthBridge())
        
        let call = FlutterMethodCall(methodName: "addPlugin", arguments: nil)
        flutterPlugin.handle(call, result: {(result)->Void in
                if let exception = result as? FlutterError {
                    XCTAssertEqual("AuthException", exception.code)
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

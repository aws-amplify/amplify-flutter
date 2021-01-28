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
import Combine
@testable import AmplifyPlugins
@testable import AWSPluginsCore
@testable import amplify_auth_cognito

class  amplify_auth_cognito_hub_tests: XCTestCase {

    var pluginUnderTest: SwiftAuthCognito = SwiftAuthCognito()
    
    func test_hub_signedInEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockAuthHubHandler: AuthCognitoHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "SIGNED_IN")
                innerExpect?.fulfill()
            }
        }

        let hubHandler = MockAuthHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.setHubListener()
       
        let signedInEvent = HubPayload(eventName: HubPayload.EventName.Auth.signedIn)
        Amplify.Hub.dispatch(to: .auth, payload: signedInEvent)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }
    
    func test_hub_signedOutEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockAuthHubHandler: AuthCognitoHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "SIGNED_OUT")
                innerExpect?.fulfill()
            }
        }

        let hubHandler = MockAuthHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.setHubListener()
       
        let signedOutEvent = HubPayload(eventName: HubPayload.EventName.Auth.signedOut)
        Amplify.Hub.dispatch(to: .auth, payload: signedOutEvent)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }
    
    func test_hub_sessionExpiredEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockAuthHubHandler: AuthCognitoHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "SESSION_EXPIRED")
                innerExpect?.fulfill()
            }
        }

        let hubHandler = MockAuthHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.setHubListener()
       
        let sessionExpiredEvent = HubPayload(eventName: HubPayload.EventName.Auth.sessionExpired)
        Amplify.Hub.dispatch(to: .auth, payload: sessionExpiredEvent)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }
    
}

// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import XCTest
import Flutter
@testable import amplify_auth_cognito_ios

class MockBinaryMessenger: NSObject, FlutterBinaryMessenger {
    
    init(isSignedIn: Bool) {
        self.isSignedIn = isSignedIn
        super.init()
    }
    
    let isSignedIn: Bool
    
    lazy var codec = NativeAuthPluginGetCodec()
    
    func send(onChannel channel: String, message: Data?) { }
    
    func send(
        onChannel channel: String,
        message: Data?,
        binaryReply callback: FlutterBinaryReply? = nil
    ) {
        // TODO: There's a bug in pigeon which prevents passing `nil` for nested objects
        // Similar to: https://github.com/flutter/flutter/issues/99150
        let userPoolTokens = NativeUserPoolTokens.make(
            withAccessToken: "accessToken",
            refreshToken: "refreshToken",
            idToken: "idToken"
        )
        let awsCredentials = NativeAWSCredentials.make(
            withAccessKeyId: "accessKeyId",
            secretAccessKey: "secretAccessKey",
            sessionToken: nil,
            expirationIso8601Utc: nil
        )
        let authSession = NativeAuthSession.makeWithIsSigned(
            in: NSNumber(booleanLiteral: isSignedIn),
            userSub: nil,
            userPoolTokens: userPoolTokens,
            identityId: nil,
            awsCredentials: awsCredentials
        )
        let encodedAuthSession = codec.encode(authSession)
        callback?(encodedAuthSession)
    }
    
    func setMessageHandlerOnChannel(
        _ channel: String,
        binaryMessageHandler handler: FlutterBinaryMessageHandler? = nil
    ) -> FlutterBinaryMessengerConnection {
        return 0
    }
    
    func cleanUpConnection(_ connection: FlutterBinaryMessengerConnection) { }
    
}

class NativeAuthPluginTests: XCTestCase {
    
    private func fetchAuthSession(isSignedIn: Bool) {
        let binaryMessenger = MockBinaryMessenger(isSignedIn: isSignedIn)
        let nativePlugin = NativeAuthPlugin(binaryMessenger: binaryMessenger)
        let expectation = expectation(description: "fetchAuthSession completes")
        nativePlugin.fetchAuthSessionGetAwsCredentials(NSNumber(booleanLiteral: true)) {
            session, error in
            defer { expectation.fulfill() }
            
            XCTAssertNil(error)
            XCTAssertNotNil(session)
            XCTAssertEqual(session?.isSignedIn, NSNumber(booleanLiteral: isSignedIn))
        }
        waitForExpectations(timeout: 1)
    }

    func testFetchAuthSessionSignedIn() {
        fetchAuthSession(isSignedIn: true)
    }
    
    func testFetchAuthSessionSignedOut() {
        fetchAuthSession(isSignedIn: false)
    }
    
}

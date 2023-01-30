// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
        let authSession = NativeAuthSession.makeWithIsSigned(
            in: NSNumber(booleanLiteral: isSignedIn),
            userSub: nil,
            userPoolTokens: nil,
            identityId: nil,
            awsCredentials: nil
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
        nativePlugin.fetchAuthSession() {
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

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import XCTest
import Flutter
@testable import amplify_datastore

class MockBinaryMessenger: NSObject, FlutterBinaryMessenger {
    
    init(isSignedIn: Bool) {
        self.isSignedIn = isSignedIn
        super.init()
    }
    
    let isSignedIn: Bool
    
    lazy var codec = NativeAuthPluginCodec.shared
    
    func send(onChannel channel: String, message: Data?) { }
    
    func send(
        onChannel channel: String,
        message: Data?,
        binaryReply callback: FlutterBinaryReply? = nil
    ) {
        let authSession = NativeAuthSession(
            isSignedIn: isSignedIn,
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
        nativePlugin.fetchAuthSession { session in
            defer { expectation.fulfill() }
            XCTAssertNotNil(session)
            XCTAssertEqual(session.isSignedIn, isSignedIn)
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

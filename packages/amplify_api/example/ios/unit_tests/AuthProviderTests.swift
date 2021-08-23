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
import Combine
@testable import amplify_api
@testable import Amplify
import AmplifyPlugins
import AWSPluginsCore

typealias TokenCallback = (AWSAuthorizationType, String?, Error?) -> ()

extension String: Error { }

class MockAuthProvider: AmplifyFunctionAuthProvider, AmplifyOIDCAuthProvider {
    let type: AWSAuthorizationType
    var callback: TokenCallback?
    
    init(type: AWSAuthorizationType, callback: TokenCallback? = nil) {
        self.type = type
        self.callback = callback
    }
    
    func getLatestAuthToken() -> Result<String, Error> {
        let token = FlutterAuthProviders.getToken(for: type)
        var error: Error?
        if token == nil {
            error = "No token available"
        }
        defer { callback?(type, token, error) }
        if let token = token {
            return .success(token)
        } else {
            return .failure(error!)
        }
    }
}

class MockAuthProviders: APIAuthProviderFactory {
    let oidcProvider = MockAuthProvider(type: .openIDConnect)
    let functionProvider = MockAuthProvider(type: .function)
    
    func setCallback(_ callback: TokenCallback?) {
        oidcProvider.callback = callback
        functionProvider.callback = callback
    }
    
    override func oidcAuthProvider() -> AmplifyOIDCAuthProvider? {
        oidcProvider
    }
    
    override func functionAuthProvider() -> AmplifyFunctionAuthProvider? {
        functionProvider
    }
}

class AuthProviderTests: XCTestCase {
    private let apiProviders = MockAuthProviders()
    var awsPlugin: AWSAPIPlugin!
    
    private let configuredTypes: [AWSAuthorizationType] = [.openIDConnect, .function]
    
    private var cancellables = Set<AnyCancellable>()

    override static func setUp() {
        Amplify.reset()
    }

    override static func tearDown() {
        Amplify.reset()
    }
    
    override func setUpWithError() throws {
        Amplify.reset()
        awsPlugin = AWSAPIPlugin(apiAuthProviderFactory: apiProviders)
        let config = """
        {
            "UserAgent": "aws-amplify-cli/2.0",
            "Version": "1.0",
            "api": {
                "plugins": {
                    "awsAPIPlugin": {
                        "mockAPI_AWS_LAMBDA": {
                            "endpointType": "GraphQL",
                            "endpoint": "https://url",
                            "region": "us-west-2",
                            "authorizationType": "AWS_LAMBDA"
                        },
                        "mockAPI_OPENID_CONNECT": {
                            "endpointType": "GraphQL",
                            "endpoint": "https://url",
                            "region": "us-west-2",
                            "authorizationType": "OPENID_CONNECT"
                        }
                    }
                }
            }
        }
        """.data(using: .utf8)!
        let amplifyConfig = try JSONDecoder().decode(AmplifyConfiguration.self, from: config)
        try Amplify.add(plugin: awsPlugin)
        try Amplify.configure(amplifyConfig)
    }
    
    override func tearDown() {
        apiProviders.setCallback(nil)
        cancellables = []
    }
    
    private func request(for type: AWSAuthorizationType) -> GraphQLRequest<String> {
        GraphQLRequest(
            apiName: "mockAPI_\(type.rawValue)",
            document: "query {}",
            variables: nil,
            responseType: String.self,
            decodePath: nil,
            options: nil)
    }
    
    private func expect(_ type: AWSAuthorizationType, isEnabled: Bool) {
        let description = { (_ type: AWSAuthorizationType) in "\(type.rawValue), isEnabled = \(isEnabled)" }
        
        let exp = XCTestExpectation(description: description(type))
        apiProviders.setCallback { type, token, error in
            XCTAssertEqual(type, type)
            if isEnabled {
                XCTAssertEqual(token, type.rawValue)
                XCTAssertNil(error)
            } else {
                XCTAssertNil(token)
                XCTAssertNotNil(error)
            }
            exp.fulfill()
        }
        
        let enabledRequest = request(for: type)
        
        Amplify.API.query(request: enabledRequest)
            .resultPublisher
            .sink { _ in } receiveValue: { _ in }
            .store(in: &cancellables)
        
        wait(for: [exp], timeout: 1)
    }

    func test_auth_providers_invoked_by_plugin() throws {
        for i in 0..<configuredTypes.count {
            let enabledType = configuredTypes[i]
            let disabledTypes = configuredTypes.filter { $0 != enabledType }
            
            FlutterAuthProviders.setToken(type: enabledType, token: enabledType.rawValue)
            disabledTypes.forEach { FlutterAuthProviders.setToken(type: $0, token: nil) }
            
            expect(enabledType, isEnabled: true)
            
            for disabledType in disabledTypes {
                expect(disabledType, isEnabled: false)
            }
        }
    }
    
    func test_auth_providers_concurrent_access() {
        let oidcToken = AWSAuthorizationType.openIDConnect.rawValue
        var hasToken: UInt32 = 0
        
        let exp = XCTestExpectation()
        DispatchQueue.global().sync {
            DispatchQueue.concurrentPerform(iterations: 1000) { it in
                if it % 2 == 0 {
                    FlutterAuthProviders.setToken(type: .openIDConnect, token: oidcToken)
                    OSAtomicTestAndSet(0, &hasToken)
                } else {
                    FlutterAuthProviders.setToken(type: .openIDConnect, token: nil)
                    OSAtomicTestAndClear(0, &hasToken)
                }
            }
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 3)
        
        let functionExp = XCTestExpectation()
        apiProviders.setCallback { type, token, error in
            XCTAssertEqual(type, .openIDConnect)
            if hasToken > 0 {
                XCTAssertEqual(token, oidcToken)
                XCTAssertNil(error)
            } else {
                XCTAssertEqual(token, nil)
                XCTAssertNotNil(error)
            }
            functionExp.fulfill()
        }
        
        Amplify.API.query(request: request(for: .openIDConnect))
            .resultPublisher
            .sink { _ in } receiveValue: { _ in }
            .store(in: &cancellables)
        
        wait(for: [functionExp], timeout: 1)
    }
}

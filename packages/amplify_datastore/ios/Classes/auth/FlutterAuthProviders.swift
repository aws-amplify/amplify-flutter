// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins
import AWSPluginsCore
import Flutter

/// A factory of [FlutterAuthProvider] instances. Manages shared state for all providers.
class FlutterAuthProviders: APIAuthProviderFactory {
    /// Thread to perform wait activities on.
    private static let queue = DispatchQueue(label: "FlutterAuthProviders")
    
    private var nativeApiPlugin: NativeApiPlugin

    /// Retrieves the latest token for `type` by calling into Flutter via the plugin's method channel.
    func getToken(for type: AWSAuthorizationType) -> Result<String, Error> {
        
        let unknownError: Result<String, Error> = .failure(
            APIError.unknown("Token could not be retrieved",
                             "An unknown error occurred.",
                             nil))

        // Preventative measure so as to not block the main thread. There is no expectation this
        // will be true but it was seen on Android during REST configuration.
        if Thread.isMainThread {
            return unknownError
        }

        var token: Result<String, Error>?
        FlutterAuthProviders.queue.sync {
            let completer = DispatchSemaphore(value: 0)

            DispatchQueue.main.async {
                self.nativeApiPlugin.getLatestAuthToken(providerName: type.rawValue) { resultToken in
                    defer { completer.signal() }
                    
                    if let resultToken = resultToken {
                        token = .success(resultToken)
                    } else {
                        token = .failure(APIError.operationError(
                            "Unable to retrieve token for \(type)",
                            """
                            Make sure you register your auth providers in the addPlugin call and \
                            that getLatestAuthToken returns a value.
                            """
                            ))
                    }
                }
            }

            let timeout: DispatchTimeInterval = .seconds(5)
            let waitResult = completer.wait(timeout: .now() + timeout)
            if waitResult == .timedOut {
                token = .failure(APIError.operationError(
                    "Token retrieval timed out after \(timeout)",
                    """
                    Please retry the call and make sure your getLatestAuthToken function completes.
                    """))
            }
        }

        return token ?? unknownError
    }

    private let authProviders: Set<AWSAuthorizationType>

    init(authProviders: [AWSAuthorizationType], nativeApiPlugin: NativeApiPlugin) {
        self.authProviders = Set(authProviders)
        self.nativeApiPlugin = nativeApiPlugin
    }

    override func oidcAuthProvider() -> AmplifyOIDCAuthProvider? {
        guard authProviders.contains(.openIDConnect) else {
            return nil
        }
        return FlutterAuthProvider(flutterAuthProviders: self, type: .openIDConnect)
    }

    override func functionAuthProvider() -> AmplifyFunctionAuthProvider? {
        guard authProviders.contains(.function) else {
            return nil
        }
        return FlutterAuthProvider(flutterAuthProviders: self, type: .function)
    }
}

/// A provider which manages token retrieval for its [AWSAuthorizationType].
struct FlutterAuthProvider: AmplifyOIDCAuthProvider, AmplifyFunctionAuthProvider {
    let flutterAuthProviders: FlutterAuthProviders
    let type: AWSAuthorizationType

    func getLatestAuthToken() -> Result<String, Error> {
        return flutterAuthProviders.getToken(for: type)
    }
}

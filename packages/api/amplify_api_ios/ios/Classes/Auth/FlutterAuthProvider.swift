// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Amplify
import AmplifyPlugins
import AWSPluginsCore
import Flutter

extension FlutterError: Error {}

/// A factory of [FlutterAuthProvider] instances. Manages shared state for all providers.
class FlutterAuthProviders: APIAuthProviderFactory {
    /// Thread to perform wait activities on.
    private static let queue = DispatchQueue(label: "FlutterAuthProviders")

    /// Retrieves the latest token for `type` by calling into Flutter via the plugin's method channel.
    static func getToken(for type: AWSAuthorizationType) -> Result<String, Error> {
        
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
        queue.sync {
            let completer = DispatchSemaphore(value: 0)

            DispatchQueue.main.async {
                SwiftAmplifyApiPlugin.nativeApiPlugin.getLatestAuthTokenProviderName(type.rawValue) { resultToken, error in
                    defer { completer.signal() }
                    
                    if let resultToken = resultToken {
                        token = .success(resultToken)
                    } else {
                        let error = error as? FlutterError
                        token = .failure(APIError.operationError(
                            "Unable to retrieve token for \(type)",
                            """
                            Make sure you register your auth providers in the addPlugin call and \
                            that getLatestAuthToken returns a value.
                            """,
                            error))
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

    init(_ authProviders: [AWSAuthorizationType]) {
        self.authProviders = Set(authProviders)
    }

    override func oidcAuthProvider() -> AmplifyOIDCAuthProvider? {
        guard authProviders.contains(.openIDConnect) else {
            return nil
        }
        return FlutterAuthProvider(type: .openIDConnect)
    }

    override func functionAuthProvider() -> AmplifyFunctionAuthProvider? {
        guard authProviders.contains(.function) else {
            return nil
        }
        return FlutterAuthProvider(type: .function)
    }
}

/// A provider which manages token retrieval for its [AWSAuthorizationType].
struct FlutterAuthProvider: AmplifyOIDCAuthProvider, AmplifyFunctionAuthProvider {
    let type: AWSAuthorizationType

    func getLatestAuthToken() -> Result<String, Error> {
        return FlutterAuthProviders.getToken(for: type)
    }
}

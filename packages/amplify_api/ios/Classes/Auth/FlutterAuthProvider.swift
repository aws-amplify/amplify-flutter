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
import Amplify
import AmplifyPlugins
import AWSPluginsCore
import Flutter

extension FlutterError: Error {}

/// A factory of [FlutterAuthProvider] instances. Manages shared state for all providers.
class FlutterAuthProviders: APIAuthProviderFactory {
    static func getToken(for type: AWSAuthorizationType) -> Result<String, Error> {
        let completer = DispatchSemaphore(value: 0)
        var token: Result<String, Error>!
        DispatchQueue.main.async {
            SwiftAmplifyApiPlugin.methodchannel.invokeMethod(
                "getLatestAuthToken",
                arguments: type.rawValue
            ) { result in
                defer { completer.signal() }
                if let result = result as? String {
                    token = .success(result)
                } else {
                    let error = result as? FlutterError
                    token = .failure(AuthError.notAuthorized(
                        "Unable to retrieve token for \(type)",
                        """
                        Make sure you register your auth providers in the addPlugin call and \
                        that getLatestAuthToken returns a value.
                        """,
                        error))
                }
            }
        }
        let waitResult = completer.wait(timeout: .now() + 2)
        guard waitResult == .success else {
            return .failure(AuthError.unknown("Token retrieval timed out after 2 seconds", nil))
        }
        return token
    }

    override func oidcAuthProvider() -> AmplifyOIDCAuthProvider? {
        return FlutterAuthProvider(type: .openIDConnect)
    }

    override func functionAuthProvider() -> AmplifyFunctionAuthProvider? {
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

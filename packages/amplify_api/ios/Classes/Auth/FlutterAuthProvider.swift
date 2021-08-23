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

/// A factory of [FlutterAuthProvider] instances. Manages shared state for all providers.
class FlutterAuthProviders: APIAuthProviderFactory {
    /// Token cache for all [FlutterAuthProvider] instances.
    static private var tokens: [AWSAuthorizationType: String?] = [:]
    
    static func setToken(type: AWSAuthorizationType, token: String?) {
        tokens[type] = token
    }
    
    static func getToken(for type: AWSAuthorizationType) -> String? {
        return tokens[type] ?? nil
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
        guard let token = FlutterAuthProviders.getToken(for: type) else {
            let tokenUnavailable = AuthError.notAuthorized(
                  "No \(type) token available",
                  "Ensure that `getLatestAuthToken` returns a value",
                  nil)
            return .failure(tokenUnavailable)
        }
        return .success(token)
    }
}

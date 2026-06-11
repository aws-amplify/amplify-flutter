//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS) || os(macOS)
import Foundation

/// Request to initiate sign in using a web UI.
///
/// Note that this call would also be used for sign up, forgot password, confirm password, and similar flows.
public struct AuthWebUISignInRequest: AmplifyOperationRequest {

    /// Optional auth provider to directly sign in with the provider
    public let authProvider: AuthProvider?

    /// Extra request options defined in `AuthWebUISignInRequest.Options`
    public var options: Options

    /// Presentation anchor on which the webUI is displayed
    public let presentationAnchor: AuthUIPresentationAnchor?

    public init(presentationAnchor: AuthUIPresentationAnchor?,
                authProvider: AuthProvider? = nil,
                options: Options) {
        self.presentationAnchor = presentationAnchor
        self.authProvider = authProvider
        self.options = options
    }
}

public extension AuthWebUISignInRequest {

    struct Options {

        /// Scopes to be defined for the sign in user
        public let scopes: [String]?

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying auth plugin functionality. See plugin documentation for expected
        /// key/values
        public let pluginOptions: Any?

        public init(scopes: [String]? = nil,
                    pluginOptions: Any? = nil) {
            self.scopes = scopes
            self.pluginOptions = pluginOptions
        }
    }
}
#endif

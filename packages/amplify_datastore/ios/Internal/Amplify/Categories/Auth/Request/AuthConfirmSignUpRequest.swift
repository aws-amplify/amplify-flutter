//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request to confirm the signup flow
public struct AuthConfirmSignUpRequest: AmplifyOperationRequest {

    /// User name for which to confirm the signup
    public let username: String

    /// Confirmation code received by the user
    public let code: String

    /// Extra request options defined in `AuthConfirmSignUpRequest.Options`
    public var options: Options

    public init(username: String, code: String, options: Options) {
        self.username = username
        self.code = code
        self.options = options
    }
}

public extension AuthConfirmSignUpRequest {

    struct Options {

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying auth plugin functionality. See plugin documentation for expected
        /// key/values
        public let pluginOptions: Any?

        public init(pluginOptions: Any? = nil) {
            self.pluginOptions = pluginOptions
        }
    }
}

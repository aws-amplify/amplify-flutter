//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request to resend sign up code
public struct AuthResendSignUpCodeRequest: AmplifyOperationRequest {

    /// User for which the sign up code should be resent
    public let username: String

    /// Extra request options defined in `AuthResendSignUpCodeRequest.Options`
    public var options: Options

    public init(username: String, options: Options) {
        self.username = username
        self.options = options
    }
}

public extension AuthResendSignUpCodeRequest {

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

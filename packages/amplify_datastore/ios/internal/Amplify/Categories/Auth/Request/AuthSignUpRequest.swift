//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request for sign up flow
public struct AuthSignUpRequest: AmplifyOperationRequest {

    /// Username to sign up
    public let username: String

    /// Password for the sign up user
    public let password: String?

    /// Extra request options defined in `AuthSignUpRequest.Options`
    public var options: Options

    public init(username: String, password: String?, options: Options) {
        self.username = username
        self.password = password
        self.options = options
    }
}

public extension AuthSignUpRequest {

    struct Options {

        /// User attributes for the signed up user
        public let userAttributes: [AuthUserAttribute]?

        /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
        /// a way to utilize the underlying auth plugin functionality. See plugin documentation for expected
        /// key/values
        public let pluginOptions: Any?

        public init(userAttributes: [AuthUserAttribute]? = nil,
                    pluginOptions: Any? = nil) {
            self.userAttributes = userAttributes
            self.pluginOptions = pluginOptions
        }
    }
}

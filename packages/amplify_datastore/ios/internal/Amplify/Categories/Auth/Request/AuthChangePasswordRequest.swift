//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request for change password operation
public struct AuthChangePasswordRequest: AmplifyOperationRequest {

    /// Old or existing password for the signed in user
    public let oldPassword: String

    /// New password for the user
    public let newPassword: String

    /// Extra request options defined in `AuthChangePasswordRequest.Options`
    public var options: Options

    public init(oldPassword: String,
                newPassword: String,
                options: Options) {
        self.oldPassword = oldPassword
        self.newPassword = newPassword
        self.options = options
    }
}

public extension AuthChangePasswordRequest {

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

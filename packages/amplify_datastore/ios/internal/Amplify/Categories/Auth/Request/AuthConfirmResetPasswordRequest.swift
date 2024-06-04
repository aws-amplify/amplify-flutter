//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request for reset password confirmation
public struct AuthConfirmResetPasswordRequest: AmplifyOperationRequest {

    /// User name for which reset password was initiated
    public let username: String

    /// New password to be assigned to the user
    public let newPassword: String

    /// Confirmation code received
    public let confirmationCode: String

    /// Extra request options defined in `AuthConfirmResetPasswordRequest.Options`
    public var options: Options

    public init(username: String,
                newPassword: String,
                confirmationCode: String,
                options: Options) {
        self.username = username
        self.newPassword = newPassword
        self.confirmationCode = confirmationCode
        self.options = options
    }
}

public extension AuthConfirmResetPasswordRequest {

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

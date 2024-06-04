//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request to confirm a user attribute update
public struct AuthConfirmUserAttributeRequest: AmplifyOperationRequest {

    /// Attribute to be confirmed
    public let attributeKey: AuthUserAttributeKey

    /// Confirmation code received by the user
    public let confirmationCode: String

    /// Extra request options defined in `AuthConfirmUserAttributeRequest.Options`
    public var options: Options

    public init(attributeKey: AuthUserAttributeKey,
                confirmationCode: String,
                options: Options) {
        self.attributeKey = attributeKey
        self.confirmationCode = confirmationCode
        self.options = options
    }
}

public extension AuthConfirmUserAttributeRequest {

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

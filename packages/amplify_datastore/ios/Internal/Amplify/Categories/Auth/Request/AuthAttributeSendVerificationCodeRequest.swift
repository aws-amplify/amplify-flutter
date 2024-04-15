//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

// swiftlint:disable type_name

/// Request for sending verification code that was generated for update attribute
public struct AuthSendUserAttributeVerificationCodeRequest: AmplifyOperationRequest {

    /// Attribute key for which the confirmation code was sent
    public let attributeKey: AuthUserAttributeKey

    /// Extra request options defined in `AuthSendUserAttributeVerificationCodeRequest.Options`
    public var options: Options

    public init(attributeKey: AuthUserAttributeKey,
                options: Options) {
        self.attributeKey = attributeKey
        self.options = options
    }
}

public extension AuthSendUserAttributeVerificationCodeRequest {

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

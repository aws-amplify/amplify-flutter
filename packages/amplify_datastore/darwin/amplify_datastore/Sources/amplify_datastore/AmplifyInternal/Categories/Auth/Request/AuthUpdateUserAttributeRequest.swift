//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request to update a single attribute of the signed in user
public struct AuthUpdateUserAttributeRequest: AmplifyOperationRequest {

    /// User attribute to update
    public let userAttribute: AuthUserAttribute

    /// Extra request options defined in `AuthUpdateUserAttributeRequest.Options`
    public var options: Options

    public init(userAttribute: AuthUserAttribute,
                options: Options) {
        self.userAttribute = userAttribute
        self.options = options
    }
}

public extension AuthUpdateUserAttributeRequest {

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

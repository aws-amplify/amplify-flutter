//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request to update multiple user attributes of the signed in user
public struct AuthUpdateUserAttributesRequest: AmplifyOperationRequest {

    /// List of user attributes to update
    public let userAttributes: [AuthUserAttribute]

    /// Extra request options defined in `AuthUpdateUserAttributesRequest.Options`
    public var options: Options

    public init(userAttributes: [AuthUserAttribute],
                options: Options) {
        self.userAttributes = userAttributes
        self.options = options
    }
}

public extension AuthUpdateUserAttributesRequest {

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

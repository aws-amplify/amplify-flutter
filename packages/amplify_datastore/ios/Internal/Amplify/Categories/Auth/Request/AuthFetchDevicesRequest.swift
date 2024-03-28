//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request to fetch the devices associated with the signed in user.
public struct AuthFetchDevicesRequest: AmplifyOperationRequest {

    /// Extra request options defined in `AuthFetchDevicesRequest.Options`
    public var options: Options

    public init(options: Options) {
        self.options = options
    }
}

public extension AuthFetchDevicesRequest {

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

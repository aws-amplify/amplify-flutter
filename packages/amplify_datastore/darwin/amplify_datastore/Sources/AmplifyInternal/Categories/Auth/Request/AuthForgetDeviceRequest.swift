//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request to forget a device of the user
public struct AuthForgetDeviceRequest: AmplifyOperationRequest {

    /// Device to forget
    ///
    /// If this value is not provided, the current device will be used.
    public let device: AuthDevice?

    /// Extra request options defined in `AuthForgetDeviceRequest.Options`
    public var options: Options

    public init(device: AuthDevice? = nil,
                options: Options) {
        self.device = device
        self.options = options
    }
}

public extension AuthForgetDeviceRequest {

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

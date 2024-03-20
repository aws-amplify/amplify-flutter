//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Request to verify TOTP setup
public struct VerifyTOTPSetupRequest: AmplifyOperationRequest {

    /// Code from the associated Authenticator app that will be used for verification
    public var code: String

    /// Extra request options defined in `VerifyTOTPSetupRequest.Options`
    public var options: Options

    public init(
        code: String,
        options: Options) {
            self.code = code
            self.options = options
    }
}

public extension VerifyTOTPSetupRequest {

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

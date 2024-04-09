//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// API Plugin's Auth related information
public protocol AWSAPIAuthInformation {

    /// Returns the deafult auth type from the default endpoint. The endpoint may accept more than one auth mode,
    /// however the default returned is the one configured on the endpoint configuration. The default endpoint is the
    /// the one determined by the API plugin, which is the one returned when called without an `apiName`.
    func defaultAuthType() throws -> AWSAuthorizationType

    /// Returns the default auth type on endpoint specified by `apiName`.
    func defaultAuthType(for apiName: String?) throws -> AWSAuthorizationType
}

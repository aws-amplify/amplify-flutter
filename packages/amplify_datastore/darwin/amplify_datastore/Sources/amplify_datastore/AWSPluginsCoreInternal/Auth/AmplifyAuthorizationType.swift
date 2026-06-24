//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import Foundation

/// - Warning: Although this has `public` access, it is intended for internal use and should not be used directly
///   by host applications. The behavior of this may change without warning.
public enum AmplifyAuthorizationType {

    /// Determine the authorization method based on the amplifyconfiguration.
    case inferred

    /// Specify the authentication method.
    case designated(AWSAuthorizationType)

    public var awsAuthType: AWSAuthorizationType? {
        switch self {
        case .inferred: return nil
        case .designated(let authType): return authType
        }
    }
}

extension AmplifyAuthorizationType: Equatable { }

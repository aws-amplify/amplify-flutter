//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Defines the protocol for an auth user
public protocol AuthUser {

    /// User name of the auth user
    var username: String { get }

    /// Unique id of the auth user
    var userId: String { get }

}

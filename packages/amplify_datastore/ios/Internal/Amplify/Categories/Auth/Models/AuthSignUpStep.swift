//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public typealias UserId = String

/// SignUp step to be followed.
public enum AuthSignUpStep {

    /// Need to confirm the user
    case confirmUser(
        AuthCodeDeliveryDetails? = nil,
        AdditionalInfo? = nil,
        UserId? = nil)

    /// Sign up is complete
    case done
}

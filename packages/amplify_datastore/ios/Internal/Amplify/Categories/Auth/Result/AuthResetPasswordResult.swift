//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Result for Auth.resetPassword api
public struct AuthResetPasswordResult {

    /// Flag to represent whether the reset password flow is complete.
    ///
    /// `true` if the reset password flow is complete.
    public let isPasswordReset: Bool

    /// Next steps to follow for reset password api.
    public let nextStep: AuthResetPasswordStep

    public init(isPasswordReset: Bool, nextStep: AuthResetPasswordStep) {
        self.isPasswordReset = isPasswordReset
        self.nextStep = nextStep
    }
}

extension AuthResetPasswordResult: Equatable {}

/// The next step in Auth.resetPassword api
public enum AuthResetPasswordStep {

    /// Next step is to confirm the password with a code.
    ///
    /// Invoke Auth.confirmResetPassword with new password and the confirmation code for the user
    /// for which `resetPassword` was invoked. `AuthCodeDeliveryDetails` describes where
    /// the confirmation code was sent and `AdditionalInfo` will provide more details if present.
    case confirmResetPasswordWithCode(AuthCodeDeliveryDetails, AdditionalInfo?)

    /// Reset password complete, there are no remaining steps
    case done

}

extension AuthResetPasswordStep: Equatable {}

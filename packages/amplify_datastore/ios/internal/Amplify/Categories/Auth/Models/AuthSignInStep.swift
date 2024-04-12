//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Set of allowed MFA types that would be used for continuing sign in during MFA selection step
public typealias AllowedMFATypes = Set<MFAType>

/// Auth SignIn flow steps
///
///
public enum AuthSignInStep {

    /// Auth step is SMS multi factor authentication.
    ///
    /// Confirmation code for the MFA will be send to the provided SMS.
    case confirmSignInWithSMSMFACode(AuthCodeDeliveryDetails, AdditionalInfo?)

    /// Auth step is in a custom challenge depending on the plugin.
    ///
    case confirmSignInWithCustomChallenge(AdditionalInfo?)

    /// Auth step required the user to give a new password.
    ///
    case confirmSignInWithNewPassword(AdditionalInfo?)

    /// Auth step is TOTP multi factor authentication.
    ///
    /// Confirmation code for the MFA will be retrieved from the associated Authenticator app
    case confirmSignInWithTOTPCode

    /// Auth step is for continuing sign in by setting up TOTP multi factor authentication.
    ///
    case continueSignInWithTOTPSetup(TOTPSetupDetails)

    /// Auth step is for continuing sign in by selecting multi factor authentication type
    ///
    case continueSignInWithMFASelection(AllowedMFATypes)

    /// Auth step required the user to change their password.
    ///
    case resetPassword(AdditionalInfo?)

    /// Auth step that required the user to be confirmed
    ///
    case confirmSignUp(AdditionalInfo?)

    /// There is no next step and the signIn flow is complete
    ///
    case done
}

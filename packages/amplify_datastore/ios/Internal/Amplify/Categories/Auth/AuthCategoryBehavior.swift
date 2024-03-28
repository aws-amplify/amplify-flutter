//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
#if os(iOS) || os(macOS)
import AuthenticationServices
public typealias AuthUIPresentationAnchor = ASPresentationAnchor
#endif

/// Behavior of the Auth category that clients will use
public protocol AuthCategoryBehavior: AuthCategoryUserBehavior, AuthCategoryDeviceBehavior {

    /// SignUp a user with the authentication provider.
    ///
    /// If the signUp require multiple steps like passing a confirmation code, use the method
    /// `confirmSignUp` after this api completes. You can check if the user is confirmed or not
    /// using the result `AuthSignUpResult.userConfirmed`.
    ///
    /// - Parameters:
    ///   - username: username to signUp
    ///   - password: password as per the password policy of the provider
    ///   - options: Parameters specific to plugin behavior
    func signUp(
        username: String,
        password: String?,
        options: AuthSignUpRequest.Options?
    ) async throws -> AuthSignUpResult

    /// Confirms the `signUp` operation.
    ///
    /// Invoke this operation as a follow up for the signUp process if the authentication provider
    /// that you are using required to follow a next step after signUp. Calling this operation without
    /// first calling `signUp` or `resendSignUpCode` may cause an error.
    /// - Parameters:
    ///   - username: Username used that was used to signUp.
    ///   - confirmationCode: Confirmation code received to the user.
    ///   - options: Parameters specific to plugin behavior
    func confirmSignUp(for username: String,
                       confirmationCode: String,
                       options: AuthConfirmSignUpRequest.Options?) async throws -> AuthSignUpResult

    /// Resends the confirmation code to confirm the signUp process
    ///
    /// - Parameters:
    ///   - username: Username of the user to be confirmed.
    ///   - options: Parameters specific to plugin behavior.
    func resendSignUpCode(
        for username: String,
        options: AuthResendSignUpCodeRequest.Options?
    ) async throws -> AuthCodeDeliveryDetails

    /// SignIn to the authentication provider
    ///
    /// Username and password are optional values, check the plugin documentation to decide on what all values need to
    /// passed. For example in a passwordless flow you just need to pass the username and the password could be nil.
    ///
    /// - Parameters:
    ///   - username: Username to signIn the user
    ///   - password: Password to signIn the user
    ///   - options: Parameters specific to plugin behavior
    func signIn(username: String?,
                password: String?,
                options: AuthSignInRequest.Options?) async throws -> AuthSignInResult

#if os(iOS) || os(macOS)
    /// SignIn using pre configured web UI.
    ///
    /// Calling this method will always launch the Auth plugin's default web user interface
    ///
    /// - Parameters:
    ///   - presentationAnchor: Anchor on which the UI is presented.
    ///   - options: Parameters specific to plugin behavior.
    func signInWithWebUI(presentationAnchor: AuthUIPresentationAnchor?,
                         options: AuthWebUISignInRequest.Options?) async throws -> AuthSignInResult

    /// SignIn using an auth provider on a web UI
    ///
    /// Calling this method will invoke the AuthProvider's default web user interface. Depending on the plugin
    /// implementation and the authentication state with the provider, this method might complete without showing
    /// any UI.
    ///
    /// - Parameters:
    ///   - authProvider: Auth provider used to signIn.
    ///   - presentationAnchor: Anchor on which the UI is presented.
    ///   - options: Parameters specific to plugin behavior.
    func signInWithWebUI(for authProvider: AuthProvider,
                         presentationAnchor: AuthUIPresentationAnchor?,
                         options: AuthWebUISignInRequest.Options?) async throws -> AuthSignInResult
#endif

    /// Confirms a next step in signIn flow.
    ///
    /// - Parameters:
    ///   - challengeResponse: Challenge response required to confirm the next step in signIn flow
    ///   - options: Parameters specific to plugin behavior.
    func confirmSignIn(
        challengeResponse: String,
        options: AuthConfirmSignInRequest.Options?
    ) async throws -> AuthSignInResult

    /// Sign out the currently logged-in user.
    ///
    /// - Parameters:
    ///   - options: Parameters specific to plugin behavior.
    func signOut(options: AuthSignOutRequest.Options?) async -> AuthSignOutResult

    /// Delete the account of the currently logged-in user.
    func deleteUser() async throws

    /// Fetch the current authentication session.
    ///
    /// - Parameters:
    ///   - options: Parameters specific to plugin behavior
    func fetchAuthSession(options: AuthFetchSessionRequest.Options?) async throws -> AuthSession

    /// Initiate a reset password flow for the user
    ///
    /// - Parameters:
    ///   - username: username whose password need to reset
    ///   - options: Parameters specific to plugin behavior
    func resetPassword(for username: String,
                       options: AuthResetPasswordRequest.Options?) async throws -> AuthResetPasswordResult

    /// Confirms a reset password flow
    ///
    /// - Parameters:
    ///   - username: username whose password need to reset
    ///   - newPassword: new password for the user
    ///   - confirmationCode: Received confirmation code
    ///   - options: Parameters specific to plugin behavior
    func confirmResetPassword(
        for username: String,
        with newPassword: String,
        confirmationCode: String,
        options: AuthConfirmResetPasswordRequest.Options?
    ) async throws

    /// Initiates TOTP Setup
    /// 
    /// Invoke this operation to setup TOTP for the user while signed in.
    /// Calling this method will initiate TOTP setup process and 
    /// returns a shared secret that can be used to generate QR code. 
    /// The setup details also contains a URI generator helper that can be used to retireve a TOTP Setup URI.
    ///
    func setUpTOTP() async throws -> TOTPSetupDetails

    /// Verifies TOTP Setup
    ///
    /// Invoke this operation to verify TOTP setup for the user while signed in.
    /// Calling this method with the verification code from the associated Authenticator app
    /// will complete the TOTP setup process.
    ///
    /// - Parameters:
    ///   - code: verification code from the associated Authenticator app
    ///   - options: Parameters specific to plugin behavior
    func verifyTOTPSetup(
        code: String,
        options: VerifyTOTPSetupRequest.Options?
    ) async throws

}

//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension AuthCategory: AuthCategoryBehavior {

    public func signUp(
        username: String,
        password: String? = nil,
        options: AuthSignUpRequest.Options? = nil
    ) async throws -> AuthSignUpResult {
        return try await plugin.signUp(username: username, password: password, options: options)
    }

    public func confirmSignUp(for username: String,
                              confirmationCode: String,
                              options: AuthConfirmSignUpRequest.Options? = nil) async throws -> AuthSignUpResult {
        return try await plugin.confirmSignUp(for: username, confirmationCode: confirmationCode, options: options)
    }

    public func resendSignUpCode(
        for username: String,
        options: AuthResendSignUpCodeRequest.Options? = nil
    ) async throws -> AuthCodeDeliveryDetails {
            return try await plugin.resendSignUpCode(for: username, options: options)
    }

    public func signIn(username: String? = nil,
                       password: String? = nil,
                       options: AuthSignInRequest.Options? = nil) async throws -> AuthSignInResult {
        return try await plugin.signIn(username: username, password: password, options: options)
    }

#if os(iOS) || os(macOS)
    public func signInWithWebUI(
        presentationAnchor: AuthUIPresentationAnchor? = nil,
        options: AuthWebUISignInRequest.Options? = nil) async throws -> AuthSignInResult {
            return try await plugin.signInWithWebUI(presentationAnchor: presentationAnchor, options: options)
        }

    public func signInWithWebUI(
        for authProvider: AuthProvider,
        presentationAnchor: AuthUIPresentationAnchor? = nil,
        options: AuthWebUISignInRequest.Options? = nil) async throws -> AuthSignInResult {
        return try await plugin.signInWithWebUI(for: authProvider,
                                      presentationAnchor: presentationAnchor,
                                      options: options)
    }
#endif

    public func confirmSignIn(
        challengeResponse: String,
        options: AuthConfirmSignInRequest.Options? = nil
    ) async throws -> AuthSignInResult {
        return try await plugin.confirmSignIn(challengeResponse: challengeResponse, options: options)
    }

    public func signOut(options: AuthSignOutRequest.Options? = nil) async -> AuthSignOutResult {
        return await plugin.signOut(options: options)
    }

    public func deleteUser() async throws {
        try await plugin.deleteUser()
    }

    public func fetchAuthSession(options: AuthFetchSessionRequest.Options? = nil) async throws -> AuthSession {
        return try await plugin.fetchAuthSession(options: options)
    }

    public func resetPassword(
        for username: String,
        options: AuthResetPasswordRequest.Options? = nil
    ) async throws -> AuthResetPasswordResult {
        return try await plugin.resetPassword(for: username, options: options)
    }

    public func confirmResetPassword(
        for username: String, with
        newPassword: String,
        confirmationCode: String,
        options: AuthConfirmResetPasswordRequest.Options? = nil
    ) async throws {
        try await plugin.confirmResetPassword(
            for: username,
            with: newPassword,
            confirmationCode: confirmationCode,
            options: options
        )
    }

    public func setUpTOTP() async throws -> TOTPSetupDetails {
        try await plugin.setUpTOTP()
    }

    public func verifyTOTPSetup(
        code: String,
        options: VerifyTOTPSetupRequest.Options? = nil
    ) async throws {
        try await plugin.verifyTOTPSetup(code: code, options: options)
    }

}

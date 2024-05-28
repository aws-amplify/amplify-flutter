// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Flutter
import UIKit

extension NativeAuthUser: AuthUser { }

extension FlutterError: Error { }

public class CognitoPlugin: AuthCategoryPlugin {
    
    /// Shim for [AuthCategoryPlugin] to allow Dart Auth to fulfill the contract of the native Auth plugin in
    /// other categories like API/Storage. For the subset of methods needed to fulfill the requirements
    /// of those categories, we bridge to the Dart plugin using a Flutter MethodChannel via `pigeon`.
    private let nativeAuthPlugin: NativeAuthPlugin
    var currentUser: AuthUser?
    
    init(nativeAuthPlugin: NativeAuthPlugin) {
        self.nativeAuthPlugin = nativeAuthPlugin
    }
    
    public let key: PluginKey = "awsCognitoAuthPlugin"
    
    public func configure(using configuration: Any?) throws {}
    
    public func reset() async {}
    
    public func fetchAuthSession(options: AuthFetchSessionRequest.Options?) async throws -> any AuthSession {
        await withCheckedContinuation { continuation in
            DispatchQueue.main.async {
                self.nativeAuthPlugin.fetchAuthSession { session in
                    let result = NativeAWSAuthCognitoSession(from: session)
                    continuation.resume(returning: result)
                }
            }
        }
    }
    
    public func getCurrentUser() async throws -> any AuthUser {
        guard let user = currentUser else {
            throw FlutterError(code: "NO_CURRENT_USER", message: "No current user is signed in.", details: nil)
        }
        return user
    }
    
    public func signUp(username: String, password: String?, options: AuthSignUpRequest.Options?) async throws -> AuthSignUpResult {
        preconditionFailure("method not supported")
    }
    
    public func confirmSignUp(for username: String, confirmationCode: String, options: AuthConfirmSignUpRequest.Options?) async throws -> AuthSignUpResult {
        preconditionFailure("method not supported")
    }
    
    public func resendSignUpCode(for username: String, options: AuthResendSignUpCodeRequest.Options?) async throws -> AuthCodeDeliveryDetails {
        preconditionFailure("method not supported")
    }
    
    public func signIn(username: String?, password: String?, options: AuthSignInRequest.Options?) async throws -> AuthSignInResult {
        preconditionFailure("method not supported")
    }
    
    public func signInWithWebUI(presentationAnchor: AuthUIPresentationAnchor?, options: AuthWebUISignInRequest.Options?) async throws -> AuthSignInResult {
        preconditionFailure("method not supported")
    }
    
    public func signInWithWebUI(for authProvider: AuthProvider, presentationAnchor: AuthUIPresentationAnchor?, options: AuthWebUISignInRequest.Options?) async throws -> AuthSignInResult {
        preconditionFailure("method not supported")
    }
    
    public func confirmSignIn(challengeResponse: String, options: AuthConfirmSignInRequest.Options?) async throws -> AuthSignInResult {
        preconditionFailure("method not supported")
    }
    
    public func signOut(options: AuthSignOutRequest.Options?) async -> any AuthSignOutResult {
        preconditionFailure("method not supported")
    }
    
    public func deleteUser() async throws {
        preconditionFailure("method not supported")
    }
    
    public func resetPassword(for username: String, options: AuthResetPasswordRequest.Options?) async throws -> AuthResetPasswordResult {
        preconditionFailure("method not supported")
    }
    
    public func confirmResetPassword(for username: String, with newPassword: String, confirmationCode: String, options: AuthConfirmResetPasswordRequest.Options?) async throws {
        preconditionFailure("method not supported")
    }
    
    public func setUpTOTP() async throws -> TOTPSetupDetails {
        preconditionFailure("method not supported")
    }
    
    public func verifyTOTPSetup(code: String, options: VerifyTOTPSetupRequest.Options?) async throws {
        preconditionFailure("method not supported")
    }
    
    public func fetchUserAttributes(options: AuthFetchUserAttributesRequest.Options?) async throws -> [AuthUserAttribute] {
        preconditionFailure("method not supported")
    }
    
    public func update(userAttribute: AuthUserAttribute, options: AuthUpdateUserAttributeRequest.Options?) async throws -> AuthUpdateAttributeResult {
        preconditionFailure("method not supported")
    }
    
    public func update(userAttributes: [AuthUserAttribute], options: AuthUpdateUserAttributesRequest.Options?) async throws -> [AuthUserAttributeKey : AuthUpdateAttributeResult] {
        preconditionFailure("method not supported")
    }
    
    public func resendConfirmationCode(forUserAttributeKey userAttributeKey: AuthUserAttributeKey, options: AuthAttributeResendConfirmationCodeRequest.Options?) async throws -> AuthCodeDeliveryDetails {
        preconditionFailure("method not supported")
    }
    
    public func sendVerificationCode(forUserAttributeKey userAttributeKey: AuthUserAttributeKey, options: AuthSendUserAttributeVerificationCodeRequest.Options?) async throws -> AuthCodeDeliveryDetails {
        preconditionFailure("method not supported")
    }
    
    public func confirm(userAttribute: AuthUserAttributeKey, confirmationCode: String, options: AuthConfirmUserAttributeRequest.Options?) async throws {
        preconditionFailure("method not supported")
    }
    
    public func update(oldPassword: String, to newPassword: String, options: AuthChangePasswordRequest.Options?) async throws {
        preconditionFailure("method not supported")
    }
    
    public func fetchDevices(options: AuthFetchDevicesRequest.Options?) async throws -> [any AuthDevice] {
        preconditionFailure("method not supported")
    }
    
    public func forgetDevice(_ device: (any AuthDevice)?, options: AuthForgetDeviceRequest.Options?) async throws {
        preconditionFailure("method not supported")
    }
    
    public func rememberDevice(options: AuthRememberDeviceRequest.Options?) async throws {
        preconditionFailure("method not supported")
    }
}

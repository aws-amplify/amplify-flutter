// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Flutter
import UIKit
import Amplify
import AWSPluginsCore
import amplify_flutter_ios

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
    

    public func signIn(
        withUrlUrl url: String,
        callbackUrlScheme: String,
        preferPrivateSession: NSNumber,
        browserPackageName: String?
    ) async -> ([String : String]?, FlutterError?) {
        preconditionFailure("signIn is not supported")
    }
    
    public func signOut(
        withUrlUrl url: String,
        callbackUrlScheme: String,
        preferPrivateSession: NSNumber,
        browserPackageName: String?
    ) async -> FlutterError? {
        preconditionFailure("signOut is not supported")
    }
    
    public let key: PluginKey = "awsCognitoAuthPlugin"
    
    public func configure(using configuration: Any?) throws {}
    
    public func reset(onComplete: @escaping BasicClosure) {
        onComplete()
    }
    
    public func fetchAuthSession(
        options: AuthFetchSessionRequest.Options?,
        listener: ((AmplifyOperation<AuthFetchSessionRequest,
                        AuthSession,
                        AuthError>.OperationResult)
                  -> Void)?
    ) -> AuthFetchSessionOperation {
        let operation = NativeAuthFetchSessionOperation(
            categoryType: .auth,
            eventName: HubPayload.EventName.Auth.fetchSessionAPI,
            request: AuthFetchSessionRequest(options: options ?? AuthFetchSessionRequest.Options()),
            resultListener: listener
        )
        nativeAuthPlugin.fetchAuthSession { session in
            let result = NativeAWSAuthCognitoSession(from: session)
            operation.dispatch(result: .success(result))
        }
        return operation
    }
    
    public func signUp(
        username: String,
        password: String?,
        options: AuthSignUpRequest.Options?,
        listener: ((AmplifyOperation<AuthSignUpRequest, AuthSignUpResult, AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthSignUpOperation {
        preconditionFailure("signUp is not supported")
    }
    
    public func getCurrentUser() -> AuthUser? {
        return currentUser
    }
    
    public func fetchDevices(
        options: AuthFetchDevicesRequest.Options?,
        listener: ((AmplifyOperation<AuthFetchDevicesRequest, Array<AuthDevice>, AuthError>.OperationResult)
                  -> Void)?
    ) -> AuthFetchDevicesOperation {
        preconditionFailure("fetchDevices is not supported")
    }
    
    public func confirmSignUp(
        for username: String,
        confirmationCode: String,
        options: AuthConfirmSignUpRequest.Options?,
        listener: ((AmplifyOperation<AuthConfirmSignUpRequest, AuthSignUpResult, AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthConfirmSignUpOperation {
        preconditionFailure("confirmSignUp is not supported")
    }
    
    public func fetchUserAttributes(
        options: AuthFetchUserAttributesRequest.Options?,
        listener: ((AmplifyOperation<AuthFetchUserAttributesRequest,
                        Array<AuthUserAttribute>,
                        AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthFetchUserAttributeOperation {
        preconditionFailure("fetchUserAttributes is not supported")
    }
    
    public func forgetDevice(
        _ device: AuthDevice?,
        options: AuthForgetDeviceRequest.Options?,
        listener: ((AmplifyOperation<AuthForgetDeviceRequest, (), AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthForgetDeviceOperation {
        preconditionFailure("forgetDevice is not supported")
    }
    
    public func resendSignUpCode(
        for username: String,
        options: AuthResendSignUpCodeRequest.Options?,
        listener: ((AmplifyOperation<AuthResendSignUpCodeRequest,
                        AuthCodeDeliveryDetails,
                        AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthResendSignUpCodeOperation {
        preconditionFailure("resendSignUpCode is not supported")
    }
    
    public func update(
        userAttribute: AuthUserAttribute,
        options: AuthUpdateUserAttributeRequest.Options?,
        listener: ((AmplifyOperation<AuthUpdateUserAttributeRequest,
                        AuthUpdateAttributeResult,
                        AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthUpdateUserAttributeOperation {
        preconditionFailure("update is not supported")
    }
    
    public func rememberDevice(
        options: AuthRememberDeviceRequest.Options?,
        listener: ((AmplifyOperation<AuthRememberDeviceRequest, (), AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthRememberDeviceOperation {
        preconditionFailure("rememberDevice is not supported")
    }
    
    public func signIn(
        username: String?,
        password: String?,
        options: AuthSignInRequest.Options?,
        listener: ((AmplifyOperation<AuthSignInRequest,
                        AuthSignInResult,
                        AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthSignInOperation {
        preconditionFailure("signIn is not supported")
    }
    
    public func update(
        userAttributes: [AuthUserAttribute],
        options: AuthUpdateUserAttributesRequest.Options?,
        listener: ((AmplifyOperation<AuthUpdateUserAttributesRequest,
                        Dictionary<AuthUserAttributeKey, AuthUpdateAttributeResult>,
                        AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthUpdateUserAttributesOperation {
        preconditionFailure("update is not supported")
    }
    
    public func signInWithWebUI(
        presentationAnchor: AuthUIPresentationAnchor,
        options: AuthWebUISignInRequest.Options?,
        listener: ((AmplifyOperation<AuthWebUISignInRequest,
                        AuthSignInResult,
                        AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthWebUISignInOperation {
        preconditionFailure("signInWithWebUI is not supported")
    }
    
    public func resendConfirmationCode(
        for attributeKey: AuthUserAttributeKey,
        options: AuthAttributeResendConfirmationCodeRequest.Options?,
        listener: ((AmplifyOperation<AuthAttributeResendConfirmationCodeRequest,
                        AuthCodeDeliveryDetails,
                        AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthAttributeResendConfirmationCodeOperation {
        preconditionFailure("resendConfirmationCode is not supported")
    }
    
    public func signInWithWebUI(
        for authProvider: AuthProvider,
        presentationAnchor: AuthUIPresentationAnchor,
        options: AuthWebUISignInRequest.Options?,
        listener: ((AmplifyOperation<AuthWebUISignInRequest,
                        AuthSignInResult,
                        AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthSocialWebUISignInOperation {
        preconditionFailure("signInWithWebUI is not supported")
    }
    
    public func confirm(
        userAttribute: AuthUserAttributeKey,
        confirmationCode: String,
        options: AuthConfirmUserAttributeRequest.Options?,
        listener: ((AmplifyOperation<AuthConfirmUserAttributeRequest, (), AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthConfirmUserAttributeOperation {
        preconditionFailure("confirm is not supported")
    }
    
    public func confirmSignIn(
        challengeResponse: String,
        options: AuthConfirmSignInRequest.Options?,
        listener: ((AmplifyOperation<AuthConfirmSignInRequest,
                        AuthSignInResult,
                        AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthConfirmSignInOperation {
        preconditionFailure("confirmSignIn is not supported")
    }
    
    public func update(
        oldPassword: String,
        to newPassword: String,
        options: AuthChangePasswordRequest.Options?,
        listener: ((AmplifyOperation<AuthChangePasswordRequest, (), AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthChangePasswordOperation {
        preconditionFailure("update is not supported")
    }
    
    public func signOut(
        options: AuthSignOutRequest.Options?,
        listener: ((AmplifyOperation<AuthSignOutRequest, (), AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthSignOutOperation {
        preconditionFailure("signOut is not supported")
    }
    
    public func deleteUser(
        listener: ((AmplifyOperation<AuthDeleteUserRequest, (), AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthDeleteUserOperation {
        preconditionFailure("deleteUser is not supported")
    }
    
    public func resetPassword(
        for username: String,
        options: AuthResetPasswordRequest.Options?,
        listener: ((AmplifyOperation<AuthResetPasswordRequest,
                        AuthResetPasswordResult,
                        AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthResetPasswordOperation {
        preconditionFailure("resetPassword is not supported")
    }
    
    public func confirmResetPassword(
        for username: String,
        with newPassword: String,
        confirmationCode: String,
        options: AuthConfirmResetPasswordRequest.Options?,
        listener: ((AmplifyOperation<AuthConfirmResetPasswordRequest, (), AuthError>.OperationResult)
                   -> Void)?
    ) -> AuthConfirmResetPasswordOperation {
        preconditionFailure("resetPassword is not supported")
    }
    
}

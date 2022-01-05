/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import Amplify
import Flutter
import AmplifyPlugins
import AWSCore

class AuthCognitoBridge {
    
    var errorHandler = AuthErrorHandler()
    
    
    func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest) {
        
        _ = Amplify.Auth.signUp(username: request.username, password:request.password, options: request.options) { response in
            switch response {
            case .success:
                let signUpData = FlutterSignUpResult(res: response)
                flutterResult(signUpData.toJSON())
            case .failure(let signUpError):
                self.errorHandler.handleAuthError(authError: signUpError, flutterResult: flutterResult)
            }
        }
    }
    
    
    func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest) {
        _ = Amplify.Auth.confirmSignUp(for: request.username, confirmationCode:request.confirmationCode, options: request.options) { response in
            switch response {
            case .success:
                let signUpData = FlutterSignUpResult(res: response)
                flutterResult(signUpData.toJSON())
                
            case .failure(let signUpError):
                self.errorHandler.handleAuthError(authError: signUpError, flutterResult: flutterResult)
            }
        }
    }
    
    func onResendSignUpCode(flutterResult: @escaping FlutterResult, request: FlutterResendSignUpCodeRequest) {
        _ = Amplify.Auth.resendSignUpCode(for: request.username, options: request.options) { response in
            switch response {
            case .success:
                let resendData = FlutterResendSignUpCodeResult(res: response)
                flutterResult(resendData.toJSON())
            case .failure(let signUpError):
                self.errorHandler.handleAuthError(authError: signUpError, flutterResult: flutterResult)
            }
        }
    }
    
    func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest) {

        _ = Amplify.Auth.signIn(username: request.username, password:request.password, options: request.options) { response in
            switch response {
            case .success(let signInResult):
                switch signInResult.nextStep {
                case .confirmSignUp:
                    self.errorHandler.handleAuthError(authError: AuthError.service("User is not confirmed.", "See attached exception for more details", AWSCognitoAuthError.userNotConfirmed), flutterResult: flutterResult)
                default:
                    let signInData = FlutterSignInResult(res: response)
                    flutterResult(signInData.toJSON())
                }
            case .failure(let signInError):
                self.errorHandler.handleAuthError(authError: signInError, flutterResult: flutterResult)
            }
        }
    }
    
    func onConfirmSignIn(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignInRequest) {
        _ = Amplify.Auth.confirmSignIn(challengeResponse: request.confirmationCode, options: request.options) { response in
            switch response {
            case .success:
                let signInData = FlutterSignInResult(res: response)
                flutterResult(signInData.toJSON())
            case .failure(let signInError):
                self.errorHandler.handleAuthError(authError: signInError, flutterResult: flutterResult)
            }
        }
    }
    
    func onSignOut(flutterResult: @escaping FlutterResult, request: FlutterSignOutRequest) {
        _ = Amplify.Auth.signOut(options: request.options) { response in
            switch response {
            case .success:
                let emptyMap: Dictionary<String, Any> = [:]
                flutterResult(emptyMap)
                
            case .failure(let signOutError):
                self.errorHandler.handleAuthError(authError: signOutError, flutterResult: flutterResult)
            }
        }
    }
    
    func onUpdatePassword(flutterResult: @escaping FlutterResult, request: FlutterUpdatePasswordRequest) {
        _ = Amplify.Auth.update(oldPassword: request.oldPassword, to: request.newPassword) { response in
            switch response {
            case .success:
                let emptyMap: Dictionary<String, Any> = [:]
                flutterResult(emptyMap)
                
            case .failure(let updatePasswordError):
                self.errorHandler.handleAuthError(authError: updatePasswordError, flutterResult: flutterResult)
            }
        }
    }
    
    func onResetPassword(flutterResult: @escaping FlutterResult, request: FlutterResetPasswordRequest) {
        _ = Amplify.Auth.resetPassword(for: request.username, options: request.options) { response in
            switch response {
            case .success:
                let resetData = FlutterResetPasswordResult(res: response)
                flutterResult(resetData.toJSON())
                
            case .failure(let resetPasswordError):
                self.errorHandler.handleAuthError(authError: resetPasswordError, flutterResult: flutterResult)
            }
        }
    }
    
    func onConfirmResetPassword(flutterResult: @escaping FlutterResult, request: FlutterConfirmResetPasswordRequest) {
        _ = Amplify.Auth.confirmResetPassword(for: request.username, with: request.newPassword, confirmationCode: request.confirmationCode, options: request.options) { response in
            switch response {
            case .success:
                let emptyMap: Dictionary<String, Any> = [:]
                flutterResult(emptyMap)
                
            case .failure(let resetPasswordError):
                self.errorHandler.handleAuthError(authError: resetPasswordError, flutterResult: flutterResult)
            }
        }
    }
    
    func onFetchSession(flutterResult: @escaping FlutterResult, request: FlutterFetchSessionRequest) {
        _ = Amplify.Auth.fetchAuthSession { result in
            do {
                if (request.getAWSCredentials) {
                    let sessionData = try FlutterFetchCognitoSessionResult(res: result)
                    flutterResult(sessionData.toJSON())
                } else {
                    let sessionData = try FlutterFetchSessionResult(res: result)
                    flutterResult(sessionData.toJSON())
                }
                
            } catch {
                self.errorHandler.handleAuthError(authError: error as! AuthError, flutterResult: flutterResult)
            }
        }
    }
    
    func onGetCurrentUser(flutterResult: @escaping FlutterResult) {
        do {
            guard let user = Amplify.Auth.getCurrentUser() else {
                throw AuthError.signedOut(
                    "You are currently signed out.",
                    "Please sign in and reattempt the operation."
                )
            }
            let userData = FlutterAuthUserResult(res: user)
            flutterResult(userData.toJSON())
            
        } catch {
            self.errorHandler.handleAuthError(authError: error as! AuthError, flutterResult: flutterResult)
        }
    }
    
    func onFetchUserAttributes(flutterResult: @escaping FlutterResult) {
        Amplify.Auth.fetchUserAttributes() { result in
            switch result {
            case .success(let attributes):
                let attributeData = FlutterFetchUserAttributesResult(res: attributes)
                flutterResult(attributeData.toList())
            case .failure(let fetchAttributeError):
                self.errorHandler.handleAuthError(authError: fetchAttributeError, flutterResult: flutterResult)
            }
        }
    }
    
    func onSignInWithWebUI(flutterResult: @escaping FlutterResult, request: FlutterSignInWithWebUIRequest) {
        var options = AuthWebUISignInRequest.Options()
        if (request.isPreferPrivateSession) {
            options = .preferPrivateSession()
        }
        Amplify.Auth.signInWithWebUI(presentationAnchor: UIApplication.shared.keyWindow!, options: options) { result in
            switch result {
            case .success:
                let signInData = FlutterSignInResult(res: result)
                flutterResult(signInData.toJSON())
            case .failure(let error):
                self.errorHandler.handleAuthError(authError: error , flutterResult: flutterResult)

            }
        }
    }
    
    func onSignInWithSocialWebUI(flutterResult: @escaping FlutterResult, request: FlutterSignInWithWebUIRequest) {
        var options = AuthWebUISignInRequest.Options()
        if (request.isPreferPrivateSession) {
            options = .preferPrivateSession()
        }
        Amplify.Auth.signInWithWebUI(for: request.provider!, presentationAnchor: UIApplication.shared.keyWindow!, options: options) { result in
            switch result {
            case .success:
                let signInData = FlutterSignInResult(res: result)
                flutterResult(signInData.toJSON())
            case .failure(let error):
                self.errorHandler.handleAuthError(authError: error , flutterResult: flutterResult)

            }
        }
    }

    func onUpdateUserAttribute(flutterResult: @escaping FlutterResult, request: FlutterUpdateUserAttributeRequest) {
        Amplify.Auth.update(userAttribute: request.attribute, options: request.options) { response in
            switch response {
            case .success:
                let updateAttributeData = FlutterUpdateUserAttributeResult(res: response)
                flutterResult(updateAttributeData.toJSON())
            case .failure(let error):
                self.errorHandler.handleAuthError(authError: error, flutterResult: flutterResult)
            }
        }
    }
    
    func onUpdateUserAttributes(flutterResult: @escaping FlutterResult, request: FlutterUpdateUserAttributesRequest) {
        Amplify.Auth.update(userAttributes: request.attributes, options: request.options) { response in
            switch response {
            case .success:
                let updateAttributesData = FlutterUpdateUserAttributesResult(res: response)
                flutterResult(updateAttributesData.toJSON())
            case .failure(let error):
                self.errorHandler.handleAuthError(authError: error, flutterResult: flutterResult)
            }
        }
    }
    
    func onConfirmUserAttribute(flutterResult: @escaping FlutterResult, request: FlutterConfirmUserAttributeRequest) {
        Amplify.Auth.confirm(userAttribute: request.userAttributeKey, confirmationCode: request.confirmationCode) { response in
            switch response {
            case .success:
                let emptyMap: Dictionary<String, Any> = [:]
                flutterResult(emptyMap)
            case .failure(let error):
                self.errorHandler.handleAuthError(authError: error, flutterResult: flutterResult)
            }
        }
    }
    
    func onResendUserAttributeConfirmationCode(flutterResult: @escaping FlutterResult, request: FlutterResendUserAttributeConfirmationCodeRequest) {
        Amplify.Auth.resendConfirmationCode(for: request.userAttributeKey, options: request.options) { response in
            switch response {
            case .success:
                let resentUserAttributeConfirmationCodeData = FlutterResendUserAttributeConfirmationCodeResult(res: response)
                flutterResult(resentUserAttributeConfirmationCodeData.toJSON())
            case .failure(let error):
                self.errorHandler.handleAuthError(authError: error, flutterResult: flutterResult)
            }
        }
    }
    
    func onDeleteUser(flutterResult: @escaping FlutterResult) {
        Amplify.Auth.deleteUser() { response in
            switch response {
            case .success:
                flutterResult(nil)
            case .failure(let error):
                self.errorHandler.handleAuthError(authError: error, flutterResult: flutterResult)
            }
        }
    }
}

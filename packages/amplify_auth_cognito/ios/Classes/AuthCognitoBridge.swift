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
        let options = AuthSignUpRequest.Options(userAttributes: request.userAttributes)
        
        _ = Amplify.Auth.signUp(username: request.username, password:request.password, options: options) { response in
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
        _ = Amplify.Auth.confirmSignUp(for: request.username, confirmationCode:request.confirmationCode) { response in
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
        _ = Amplify.Auth.resendSignUpCode(for: request.username) { response in
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
        _ = Amplify.Auth.signIn(username: request.username, password:request.password) { response in
            switch response {
              case .success(let signInResult):
                switch signInResult.nextStep {
                  case .confirmSignUp:
                    // This avoids importing the mobileclient code
                    enum ErrorShim: Error {
                        case userNotConfirmed
                    }
                    self.errorHandler.handleAuthError(authError: AuthError.service("User is not confirmed.", "See attached exception for more details", ErrorShim.userNotConfirmed), flutterResult: flutterResult)
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
        _ = Amplify.Auth.confirmSignIn(challengeResponse: request.confirmationCode) { response in
            switch response {
            case .success:
                let signInData = FlutterSignInResult(res: response)
                flutterResult(signInData.toJSON())
            case .failure(let signInError):
                self.errorHandler.handleAuthError(authError: signInError, flutterResult: flutterResult)
            }
        }
    }
    
    func onSignOut(flutterResult: @escaping FlutterResult) {
        _ = Amplify.Auth.signOut() { response in
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
        _ = Amplify.Auth.resetPassword(for: request.username) { response in
            switch response {
            case .success:
                let resetData = FlutterResetPasswordResult(res: response)
                flutterResult(resetData.toJSON())
                
            case .failure(let resetPasswordError):
                self.errorHandler.handleAuthError(authError: resetPasswordError, flutterResult: flutterResult)
            }
        }
    }
    
    func onConfirmPassword(flutterResult: @escaping FlutterResult, request: FlutterConfirmPasswordRequest) {
        _ = Amplify.Auth.confirmResetPassword(for: request.username, with: request.newPassword, confirmationCode: request.confirmationCode) { response in
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
    
    func onSignInWithWebUI(flutterResult: @escaping FlutterResult) {
        Amplify.Auth.signInWithWebUI(presentationAnchor: UIApplication.shared.keyWindow!) { result in
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
        Amplify.Auth.signInWithWebUI(for: request.provider!, presentationAnchor: UIApplication.shared.keyWindow!) { result in
            switch result {
                case .success:
                    let signInData = FlutterSignInResult(res: result)
                    flutterResult(signInData.toJSON())
                case .failure(let error):
                    self.errorHandler.handleAuthError(authError: error , flutterResult: flutterResult)

            }
        }
    }
}

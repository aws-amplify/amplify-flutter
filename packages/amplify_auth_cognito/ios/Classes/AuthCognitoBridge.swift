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

class AuthCognitoBridge {
    
    func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest) {
        let options = AuthSignUpRequest.Options(userAttributes: request.userAttributes)
        
        _ = Amplify.Auth.signUp(username: request.username, password:request.password, options: options) { response in
            switch response {
            case .success:
                let signUpData = FlutterSignUpResult(res: response)
                flutterResult(signUpData.toJSON())
            case .failure(let signUpError):
                handleAuthError(error: signUpError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.SIGNUP.rawValue)
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
                handleAuthError(error: signUpError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.CONFIRM_SIGNUP.rawValue)
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
                handleAuthError(error: signUpError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.RESEND_SIGNUP.rawValue)
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
                    handleAuthError(error: AuthError.service("User is not confirmed.", "See attached exception for more details", ErrorShim.userNotConfirmed), flutterResult: flutterResult, msg: FlutterAuthErrorMessage.SIGNIN.rawValue)
                  default:
                    let signInData = FlutterSignInResult(res: response)
                    flutterResult(signInData.toJSON())
                }
              case .failure(let signInError):
                handleAuthError(error: signInError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.SIGNIN.rawValue)
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
                handleAuthError(error: signInError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.CONFIRM_SIGNIN.rawValue)
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
                handleAuthError(error: signOutError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.SIGNOUT.rawValue)
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
                handleAuthError(error: updatePasswordError, flutterResult: flutterResult, msg: FlutterAuthErrorMessage.UPDATE_PASSWORD.rawValue)
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
                handleAuthError(error: resetPasswordError, flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.RESET_PASSWORD.rawValue)
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
                handleAuthError(error: resetPasswordError, flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.RESET_PASSWORD.rawValue)
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
                handleAuthError(error: error as! AuthError, flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.FETCH_SESSION.rawValue)
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
            handleAuthError(error: error as! AuthError, flutterResult: flutterResult,  msg: FlutterAuthErrorMessage.GET_CURRENT_USER.rawValue)
        }
    }
}

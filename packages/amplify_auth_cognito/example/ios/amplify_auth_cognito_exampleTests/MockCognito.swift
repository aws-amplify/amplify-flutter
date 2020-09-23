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
import AmplifyPlugins
import AWSCore
import AWSPluginsCore
import AWSMobileClient
@testable import amplify_auth_cognito

class MockCognito: AuthCognitoProtocol {
    
    var returnError: Bool = false
    
    func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void) {
        if (!returnError) {
            var signUpRes = Result<AuthSignUpResult,AuthError>.success(
                AuthSignUpResult(AuthSignUpStep.confirmUser(AuthCodeDeliveryDetails(destination: DeliveryDestination.email(_email)), ["foo": "bar"])))
            if (((request.options!["userAttributes"] as! Dictionary<String, Any>)["phone_number"]) as? String == _phoneNumber) {
                signUpRes = Result<AuthSignUpResult,AuthError>.success(
                AuthSignUpResult(AuthSignUpStep.confirmUser(AuthCodeDeliveryDetails(destination: DeliveryDestination.phone(_phoneNumber)), ["foo": "bar"])))
            } else if (((request.options!["userAttributes"] as! Dictionary<String, Any>)["sms"]) as? String == _phoneNumber) {
                signUpRes = Result<AuthSignUpResult,AuthError>.success(
                AuthSignUpResult(AuthSignUpStep.confirmUser(AuthCodeDeliveryDetails(destination: DeliveryDestination.sms(_phoneNumber)), ["foo": "bar"])))
            } else if (((request.options!["userAttributes"] as! Dictionary<String, Any>)["custom"]) as? String == _phoneNumber) {
                signUpRes = Result<AuthSignUpResult,AuthError>.success(
                AuthSignUpResult(AuthSignUpStep.confirmUser(AuthCodeDeliveryDetails(destination: DeliveryDestination.unknown(_phoneNumber)), ["foo": "bar"])))
            } else if (request.options!["complete"] as? Bool == true) {
                signUpRes = Result<AuthSignUpResult,AuthError>.success(AuthSignUpResult(AuthSignUpStep.done))
            }
            let signUpData = FlutterSignUpResult(res: signUpRes)
            flutterResult(signUpData)
        } else {
            let authError = AuthError.service("Invalid username", "Enter a username", nil)
            errorHandler(authError, flutterResult, FlutterAuthErrorMessage.SIGNUP.rawValue)
        }
    }
    func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void) {
        if (!returnError) {
          let confirmSignUpRes = Result<AuthSignUpResult,AuthError>.success(AuthSignUpResult(AuthSignUpStep.done))
          let signUpData = FlutterSignUpResult(res: confirmSignUpRes)
          flutterResult(signUpData)
        } else {
            let authError = AuthError.service("Invalid username", "Enter a username", nil)
            errorHandler(authError, flutterResult, FlutterAuthErrorMessage.CONFIRM_SIGNUP.rawValue)
        }
    }
    
    func onResendSignUpCode(flutterResult: @escaping FlutterResult, request: FlutterResendSignUpCodeRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void) {
        if (!returnError) {
          var confirmSignUpRes = Result<AuthCodeDeliveryDetails, AuthError>.success(AuthCodeDeliveryDetails(destination: DeliveryDestination.email(_email)))
          if (request.username == "phone") {
            confirmSignUpRes = Result<AuthCodeDeliveryDetails, AuthError>.success(AuthCodeDeliveryDetails(destination: DeliveryDestination.phone(_phoneNumber)))
          } else if (request.username == "sms") {
            confirmSignUpRes = Result<AuthCodeDeliveryDetails, AuthError>.success(AuthCodeDeliveryDetails(destination: DeliveryDestination.sms(_phoneNumber)))
          } else if (request.username == "custom") {
            confirmSignUpRes = Result<AuthCodeDeliveryDetails, AuthError>.success(AuthCodeDeliveryDetails(destination: DeliveryDestination.unknown(_phoneNumber)))
          }
          let resendData = FlutterResendSignUpCodeResult(res: confirmSignUpRes)
          flutterResult(resendData)
        } else {
            let authError = AuthError.service("Invalid username", "Enter a username", nil)
            errorHandler(authError, flutterResult, FlutterAuthErrorMessage.RESEND_SIGNUP.rawValue)
        }
    }
    
    func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void) {
        if (!returnError) {
          var signInRes = Result<AuthSignInResult, AuthError>.success(
            AuthSignInResult(nextStep: AuthSignInStep.confirmSignInWithSMSMFACode(AuthCodeDeliveryDetails(destination: DeliveryDestination.email(_email)), ["foo": "bar"]))
          )
          if (request.options?["phoneNumber"] as? String == _phoneNumber) {
            signInRes = Result<AuthSignInResult, AuthError>.success(
              AuthSignInResult(nextStep:
                AuthSignInStep.confirmSignInWithSMSMFACode(AuthCodeDeliveryDetails(destination: DeliveryDestination.sms(_phoneNumber)), ["foo": "bar"])))
          }
          if (request.options?["delivery"] as? String == "resetPassword") {
            signInRes = Result<AuthSignInResult, AuthError>.success(
              AuthSignInResult(nextStep:
                    AuthSignInStep.resetPassword(["foo": "bar"])))
          }
          if (request.options?["delivery"] as? String == "confirmSignInWithCustomChallenge") {
            signInRes = Result<AuthSignInResult, AuthError>.success(
              AuthSignInResult(nextStep:
                AuthSignInStep.confirmSignInWithCustomChallenge(["foo": "bar"])))
          }
          if (request.options?["delivery"] as? String == "confirmSignInWithNewPassword") {
            signInRes = Result<AuthSignInResult, AuthError>.success(
              AuthSignInResult(nextStep:
                AuthSignInStep.confirmSignInWithNewPassword(["foo": "bar"])))
          }
          if (request.options?["delivery"] as? String == "done") {
            signInRes = Result<AuthSignInResult, AuthError>.success(
              AuthSignInResult(nextStep:
                AuthSignInStep.done))
          }
          let resendData = FlutterSignInResult(res: signInRes)
          flutterResult(resendData)
        } else {
            let authError = AuthError.service("Invalid username", "Enter a username", nil)
            errorHandler(authError, flutterResult, FlutterAuthErrorMessage.SIGNIN.rawValue)
        }
    }
    
    func onConfirmSignIn(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignInRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void) {
        if (!returnError) {
          let confirmSignUpRes = Result<AuthSignInResult,AuthError>.success(AuthSignInResult(nextStep: AuthSignInStep.done))
          let signUpData = FlutterSignInResult(res: confirmSignUpRes)
          flutterResult(signUpData)
        } else {
            let authError = AuthError.service("Invalid confirmation code", "Enter a confirmation code", nil)
            errorHandler(authError, flutterResult, FlutterAuthErrorMessage.CONFIRM_SIGNIN.rawValue)
        }
    }
    
    func onUpdatePassword(flutterResult: @escaping FlutterResult, request: FlutterUpdatePasswordRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void) {
        if (!returnError) {
          let emptyMap: Dictionary<String, Any> = [:]
          flutterResult(emptyMap)
        } else {
            let authError = AuthError.service("Invalid password", "Enter the old password", nil)
            errorHandler(authError, flutterResult, FlutterAuthErrorMessage.UPDATE_PASSWORD.rawValue)
        }
    }
    
    func onResetPassword(flutterResult: @escaping FlutterResult, request: FlutterResetPasswordRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void) {
        if (!returnError) {
         let resetRes = Result<AuthResetPasswordResult,AuthError>.success(
            AuthResetPasswordResult(
                isPasswordReset: true,
                nextStep: AuthResetPasswordStep.confirmResetPasswordWithCode(
                    AuthCodeDeliveryDetails(destination: DeliveryDestination.email("test@test.com")),
                    nil)
            )
          )
          let resetData = FlutterResetPasswordResult(res: resetRes)
          flutterResult(resetData)
        } else {
            let authError = AuthError.service("Invalid username", "Enter a username", nil)
            errorHandler(authError, flutterResult, FlutterAuthErrorMessage.RESET_PASSWORD.rawValue)
        }
    }
    
    func onConfirmPassword(flutterResult: @escaping FlutterResult, request: FlutterConfirmPasswordRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void) {
        if (!returnError) {
         let emptyMap: Dictionary<String, Any> = [:]
         flutterResult(emptyMap)
        } else {
            let authError = AuthError.service("Invalid username", "Enter a username", nil)
            errorHandler(authError, flutterResult, FlutterAuthErrorMessage.CONFIRM_PASSWORD.rawValue)
        }
    }
    
    func onSignOut(flutterResult: @escaping FlutterResult, request: FlutterSignOutRequest, errorHandler: @escaping (AuthError, (Any?) -> Void, String) -> Void) {
        if (!returnError) {
          let emptyMap: Dictionary<String, Any> = [:]
          flutterResult(emptyMap)
        } else {
          let authError = AuthError.service("Invalid options", "Include option parameters", nil)
          errorHandler(authError, flutterResult, FlutterAuthErrorMessage.SIGNOUT.rawValue)
        }
    }
    
    func onFetchSession(flutterResult: @escaping FlutterResult, request: FlutterFetchSessionRequest, errorHandler: @escaping (AuthError, (Any?) -> Void, String) -> Void) {
        
        if (request.getAWSCredentials) {
            let creds = MockCredentials(accessKey: _accessKey, secretKey: _secretKey)
            let tokens = MockTokens(idToken: _idToken, accessToken: _accessToken, refreshToken: _refreshToken)
            let authSession = MockCognitoSession(
                isSignedIn: true,
                userSubResult: .success("testsub"),
                identityIdResult: .success("testid"),
                awsCredentialsResult:  Result<AuthAWSCredentials, AuthError>.success(creds),
                cognitoTokensResult: Result<AuthCognitoTokens, AuthError>.success(tokens)
            )
            let sessionData = Result<AuthSession,AuthError>.success(authSession)
            do {
              let signUpData = try FlutterFetchCognitoSessionResult(res: sessionData)
              flutterResult(signUpData)
            } catch {
              errorHandler(error as! AuthError, flutterResult, FlutterAuthErrorMessage.FETCH_SESSION.rawValue)
            }
        } else {
            let authSession = MockSession(isSignedIn: true)
            let sessionData = Result<AuthSession,AuthError>.success(authSession)
            do {
              let signUpData = try FlutterFetchSessionResult(res: sessionData)
              flutterResult(signUpData)
            } catch {
              errorHandler(error as! AuthError, flutterResult, FlutterAuthErrorMessage.FETCH_SESSION.rawValue)
            }
        }
        
    }
    
    func onGetCurrentUser(flutterResult: @escaping FlutterResult, errorHandler: @escaping (AuthError, (Any?) -> Void, String) -> Void) {
        if (!returnError) {
          struct TestUser: AuthUser {
                public var username: String
                public var userId: String

          }
          let resetRes = TestUser(username: "testuser", userId: "123")
          let resetData = FlutterAuthUserResult(res: resetRes)
          flutterResult(resetData)
        } else {
            let authError = AuthError.service("Could not fetch user", "Not logged in", nil)
            errorHandler(authError, flutterResult, FlutterAuthErrorMessage.GET_CURRENT_USER.rawValue)
        }
    }

}

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

protocol AuthCognitoProtocol {
    func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
    func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
    func onResendSignUpCode(flutterResult: @escaping FlutterResult, request: FlutterResendSignUpCodeRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
    func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
    func onConfirmSignIn(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignInRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
    func onSignOut(flutterResult: @escaping FlutterResult, request: FlutterSignOutRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
    func onUpdatePassword(flutterResult: @escaping FlutterResult, request: FlutterUpdatePasswordRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
    func onResetPassword(flutterResult: @escaping FlutterResult, request: FlutterResetPasswordRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
    func onConfirmPassword(flutterResult: @escaping FlutterResult, request: FlutterConfirmPasswordRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
    func onFetchSession(flutterResult: @escaping FlutterResult, request: FlutterFetchSessionRequest, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
    func onGetCurrentUser(flutterResult: @escaping FlutterResult, errorHandler: @escaping (_ error: AuthError, _ flutterResult: FlutterResult, _ msg: String) -> Void)
}

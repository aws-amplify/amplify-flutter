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
    func onSignUp(flutterResult: @escaping FlutterResult, request: FlutterSignUpRequest)
    func onConfirmSignUp(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignUpRequest)
    func onResendSignUpCode(flutterResult: @escaping FlutterResult, request: FlutterResendSignUpCodeRequest)
    func onSignIn(flutterResult: @escaping FlutterResult, request: FlutterSignInRequest)
    func onConfirmSignIn(flutterResult: @escaping FlutterResult, request: FlutterConfirmSignInRequest)
    func onSignOut(flutterResult: @escaping FlutterResult, request: FlutterSignOutRequest)
    func onUpdatePassword(flutterResult: @escaping FlutterResult, request: FlutterUpdatePasswordRequest)
    func onResetPassword(flutterResult: @escaping FlutterResult, request: FlutterResetPasswordRequest)
    func onConfirmPassword(flutterResult: @escaping FlutterResult, request: FlutterConfirmPasswordRequest)
    func onFetchSession(flutterResult: @escaping FlutterResult, request: FlutterFetchSessionRequest)
    func onGetCurrentUser(flutterResult: @escaping FlutterResult)
}

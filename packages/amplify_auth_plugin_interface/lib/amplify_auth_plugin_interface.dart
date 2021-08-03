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

library amplify_auth_plugin_interface;

import 'dart:async';
import 'package:amplify_core/types/index.dart';
import 'src/types.dart';
export 'src/types.dart';

// ignore_for_file: public_member_api_docs
abstract class AuthPluginInterface extends AmplifyPluginInterface {
  /// Constructs a AmplifyPlatform.
  AuthPluginInterface({required Object token}) : super(token: token);

  StreamController get streamController {
    throw UnimplementedError(
        'streamController getter has not been implemented.');
  }

  Future<void> addPlugin() async {
    throw UnimplementedError('addPlugin() has not been implemented.');
  }

  Future<SignUpResult> signUp({required SignUpRequest request}) {
    throw UnimplementedError('signUp() has not been implemented.');
  }

  Future<SignUpResult> confirmSignUp({required ConfirmSignUpRequest request}) {
    throw UnimplementedError('confirmSignUp() has not been implemented.');
  }

  Future<ResendSignUpCodeResult> resendSignUpCode(
      {required ResendSignUpCodeRequest request}) {
    throw UnimplementedError('resendSignUpCode() has not been implemented.');
  }

  Future<SignInResult> signIn({required SignInRequest request}) {
    throw UnimplementedError('signIn() has not been implemented.');
  }

  Future<SignOutResult> signOut({SignOutRequest? request}) {
    throw UnimplementedError('signOut() has not been implemented.');
  }

  Future<SignInResult> confirmSignIn({required ConfirmSignInRequest request}) {
    throw UnimplementedError('confirmSignIn() has not been implemented.');
  }

  Future<UpdatePasswordResult> updatePassword(
      {UpdatePasswordRequest? request}) {
    throw UnimplementedError('updatePassword() has not been implemented.');
  }

  Future<ResetPasswordResult> resetPassword(
      {required ResetPasswordRequest request}) {
    throw UnimplementedError('resetPassword() has not been implemented.');
  }

  Future<UpdatePasswordResult> confirmPassword(
      {ConfirmPasswordRequest? request}) {
    throw UnimplementedError('confirmPassword() has not been implemented.');
  }

  Future<AuthUser> getCurrentUser({AuthUserRequest? request}) {
    throw UnimplementedError('getCurrentUser() has not been implemented.');
  }

  Future<List<AuthUserAttribute>> fetchUserAttributes(
      {FetchUserAttributesRequest? request}) {
    throw UnimplementedError('fetchUserAttributes() has not been implemented.');
  }

  Future<AuthSession> fetchAuthSession({required AuthSessionRequest request}) {
    throw UnimplementedError('fetchAuthSession() has not been implemented.');
  }

  Future<SignInResult> signInWithWebUI({SignInWithWebUIRequest? request}) {
    throw UnimplementedError('signInWithWebUI() has not been implemented.');
  }

  Future<UpdateUserAttributeResult> updateUserAttribute(
      {UpdateUserAttributeRequest? request}) {
    throw UnimplementedError('updateUserAttribute() has not been implemented.');
  }

  Future<Map<String, UpdateUserAttributeResult>> updateUserAttributes(
      {required UpdateUserAttributesRequest request}) {
    throw UnimplementedError(
        'updateUserAttributes() has not been implemented.');
  }

  Future<ConfirmUserAttributeResult> confirmUserAttribute(
      {ConfirmUserAttributeRequest? request}) {
    throw UnimplementedError(
        'confirmUserAttribute() has not been implemented.');
  }

  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode(
          {ResendUserAttributeConfirmationCodeRequest? request}) {
    throw UnimplementedError(
        'resendUserAttributeConfirmationCode() has not been implemented.');
  }

  /// Remembers the current device.
  Future<void> rememberDevice() {
    throw UnimplementedError('rememberDevice() has not been implemented.');
  }

  /// Forgets [device], or the current device, if no parameters are given.
  Future<void> forgetDevice([AuthDevice? device]) {
    throw UnimplementedError('forgetDevice() has not been implemented.');
  }

  /// Retrieves all tracked devices for the current user.
  Future<List<AuthDevice>> fetchDevices() {
    throw UnimplementedError('fetchDevices() has not been implemented.');
  }
}

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

import 'dart:async';
import 'dart:core';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_mixin.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_auth_cognito.dart';
import './amplify_auth_cognito_stream_controller.dart';

export 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';

class AmplifyAuthCognitoInterface extends PlatformInterface
    implements AmplifyAuthCognitoDart {
  static final Object _token = Object();
  static const String UnimplementedMessage =
      'has not been implmented for the Cognito plugin';

  /// Constructs a AmplifyAuthCognito plugin
  AmplifyAuthCognitoInterface() : super(token: _token);

  static AmplifyAuthCognitoInterface _instance =
      AmplifyAuthCognitoMethodChannel();
  static AuthStreamController streamWrapper = AuthStreamController();

  static AmplifyAuthCognitoInterface get instance => _instance;

  static set instance(AmplifyAuthCognitoInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  @override
  Future<void> addPlugin() async {
    throw UnimplementedError('signUp() $UnimplementedMessage');
  }

  @override
  StreamController<AuthHubEvent> get streamController {
    throw UnimplementedError('get streamController $UnimplementedMessage');
  }

  @override
  Future<CognitoSignUpResult> signUp({required SignUpRequest request}) async {
    throw UnimplementedError('signUp() $UnimplementedMessage');
  }

  @override
  Future<SignUpResult> confirmSignUp(
      {required ConfirmSignUpRequest request}) async {
    throw UnimplementedError('confirmSignUp() $UnimplementedMessage');
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode(
      {required ResendSignUpCodeRequest request}) async {
    throw UnimplementedError('resendSignUpCode() $UnimplementedMessage');
  }

  @override
  Future<SignInResult> signIn({required SignInRequest request}) async {
    throw UnimplementedError('signIn() $UnimplementedMessage');
  }

  @override
  Future<SignInResult> confirmSignIn(
      {required ConfirmSignInRequest request}) async {
    throw UnimplementedError('confirmSignIn() $UnimplementedMessage');
  }

  @override
  Future<SignOutResult> signOut({SignOutRequest? request}) async {
    throw UnimplementedError('signOut() $UnimplementedMessage');
  }

  @override
  Future<UpdatePasswordResult> updatePassword(
      {UpdatePasswordRequest? request}) async {
    throw UnimplementedError('updatePassword() $UnimplementedMessage');
  }

  @override
  Future<ResetPasswordResult> resetPassword(
      {ResetPasswordRequest? request}) async {
    throw UnimplementedError('resetPassword() $UnimplementedMessage');
  }

  @override
  Future<UpdatePasswordResult> confirmResetPassword(
      {ConfirmResetPasswordRequest? request}) async {
    throw UnimplementedError('confirmResetPassword() $UnimplementedMessage');
  }

  @override
  Future<AuthUser> getCurrentUser({AuthUserRequest? request}) async {
    throw UnimplementedError('getCurrentUser() $UnimplementedMessage');
  }

  @override
  Future<List<AuthUserAttribute>> fetchUserAttributes(
      {FetchUserAttributesRequest? request}) async {
    throw UnimplementedError('fetchUserAttributes() $UnimplementedMessage');
  }

  @override
  Future<AuthSession> fetchAuthSession({AuthSessionRequest? request}) async {
    throw UnimplementedError('fetchAuthSession() $UnimplementedMessage');
  }

  @override
  Future<SignInResult> signInWithWebUI(
      {SignInWithWebUIRequest? request}) async {
    throw UnimplementedError('signInWithWebUI() $UnimplementedMessage');
  }

  @override
  Future<UpdateUserAttributeResult> updateUserAttribute(
      {UpdateUserAttributeRequest? request}) async {
    throw UnimplementedError('updateUserAttribute() $UnimplementedMessage');
  }

  @override
  Future<Map<UserAttributeKey, UpdateUserAttributeResult>> updateUserAttributes(
      {required UpdateUserAttributesRequest request}) async {
    throw UnimplementedError('updateUserAttributes() $UnimplementedMessage');
  }

  @override
  Future<ConfirmUserAttributeResult> confirmUserAttribute(
      {ConfirmUserAttributeRequest? request}) async {
    throw UnimplementedError('confirmUserAttribute() $UnimplementedMessage');
  }

  @override
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    ResendUserAttributeConfirmationCodeRequest? request,
  }) async {
    throw UnimplementedError(
        'resendUserAttributeConfirmationCode() $UnimplementedMessage');
  }

  @override
  Future<void> rememberDevice() {
    throw UnimplementedError('rememberDevice() $UnimplementedMessage');
  }

  @override
  Future<void> forgetDevice([AuthDevice? device]) {
    throw UnimplementedError('forgetDevice() $UnimplementedMessage');
  }

  @override
  Future<List<CognitoDevice>> fetchDevices() {
    throw UnimplementedError('fetchDevices() $UnimplementedMessage');
  }

  @override
  Future<void> deleteUser() {
    throw UnimplementedError('deleteUser() $UnimplementedMessage');
  }
}

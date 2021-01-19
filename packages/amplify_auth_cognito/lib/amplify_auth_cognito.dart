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
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_auth_cognito.dart';
import './amplify_auth_cognito_stream_controller.dart';

export './src/types.dart';
export 'package:amplify_auth_plugin_interface/src/types.dart';

class AmplifyAuthCognito extends AuthPluginInterface {
  static final Object _token = Object();

  /// Constructs a AmplifyAuthCognito plugin
  AmplifyAuthCognito() : super(token: _token);

  static AmplifyAuthCognito _instance = AmplifyAuthCognitoMethodChannel();
  static AuthStreamController streamWrapper = AuthStreamController();


  static set instance(AuthPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  StreamController get streamController {
    return streamWrapper.authStreamController;
  }

  Future<SignUpResult> signUp({@required SignUpRequest request}) async {
    final res = await _instance.signUp(request: request);
    return res;
  }

  Future<SignUpResult> confirmSignUp(
      {@required ConfirmSignUpRequest request}) async {
    final res = await _instance.confirmSignUp(request: request);
    return res;
  }

  Future<ResendSignUpCodeResult> resendSignUpCode(
      {@required ResendSignUpCodeRequest request}) async {
    final res = await _instance.resendSignUpCode(request: request);
    return res;
  }

  Future<SignInResult> signIn({@required SignInRequest request}) async {
    final res = await _instance.signIn(request: request);
    return res;
  }

  Future<SignInResult> confirmSignIn(
      {@required ConfirmSignInRequest request}) async {
    final res = await _instance.confirmSignIn(request: request);
    return res;
  }

  Future<SignOutResult> signOut({@required SignOutRequest request}) async {
    final res = await _instance.signOut(request: request);
    return res;
  }

  Future<UpdatePasswordResult> updatePassword(
      {UpdatePasswordRequest request}) async {
    final res = await _instance.updatePassword(request: request);
    return res;
  }

  Future<ResetPasswordResult> resetPassword(
      {ResetPasswordRequest request}) async {
    final res = await _instance.resetPassword(request: request);
    return res;
  }

  Future<UpdatePasswordResult> confirmPassword(
      {ConfirmPasswordRequest request}) async {
    final res = await _instance.confirmPassword(request: request);
    return res;
  }

  Future<AuthUser> getCurrentUser({AuthUserRequest request}) async {
    final res = await _instance.getCurrentUser();
    return res;
  }

  Future<AuthSession> fetchAuthSession({AuthSessionRequest request}) async {
    final res = await _instance.fetchAuthSession(request: request);
    return res;
  }

  Future<SignInResult> signInWithWebUI({SignInWithWebUIRequest request}) async {
    final res = await _instance.signInWithWebUI(request: request);
    return res; 
  }
}

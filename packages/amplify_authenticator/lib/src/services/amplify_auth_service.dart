/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';

abstract class AuthService {
  Future<SignInResult> signIn(String username, String password);

  Future<void> signOut();

  Future<SignUpResult> signUp(
      String username, String password, Map<String, String> authAttributes);

  Future<SignUpResult> confirmSignUp(String username, String code);

  Future<AuthUser?> get currentUser;

  Future<bool> get isLoggedIn;

  Future<ResetPasswordResult> resetPassword(String username);

  Future<UpdatePasswordResult> confirmPassword(
      String username, String code, String newPassword);

  Future<SignInResult> confirmSignIn(
      {required String code, Map<String, String>? attributes});

  Future<ResendSignUpCodeResult> resendSignUpCode(String username);

  Future<AmplifyConfig> waitForConfiguration();
}

class AmplifyAuthService implements AuthService {
  @override
  Future<SignInResult> signIn(String username, String password) async {
    final SignInResult result = await Amplify.Auth.signIn(
      username: username,
      password: password,
    );

    return result;
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode(String username) async {
    return await Amplify.Auth.resendSignUpCode(username: username);
  }

  @override
  Future<SignUpResult> signUp(
      String username, String password, Map<String, String> attributes) async {
    return await Amplify.Auth.signUp(
      username: username,
      password: password,
      options: CognitoSignUpOptions(
        userAttributes: attributes,
      ),
    );
  }

  @override
  Future<SignUpResult> confirmSignUp(String username, String code) async {
    return await Amplify.Auth.confirmSignUp(
      username: username,
      confirmationCode: code,
    );
  }

  Future<SignInResult> confirmSignIn(
      {required String code, Map<String, String>? attributes}) async {
    return await Amplify.Auth.confirmSignIn(
        confirmationValue: code,
        options: CognitoConfirmSignInOptions(userAttributes: attributes));
  }

  @override
  Future<void> signOut() {
    return Amplify.Auth.signOut();
  }

  @override
  Future<AuthUser?> get currentUser async {
    if (!Amplify.isConfigured) return null;

    if (!await isLoggedIn) {
      return null;
    }
    final user = await Amplify.Auth.getCurrentUser();

    return user;
  }

  @override
  Future<bool> get isLoggedIn async {
    try {
      final result = await Amplify.Auth.fetchAuthSession();

      return result.isSignedIn;
    } on SignedOutException {
      return false;
    }
  }

  @override
  Future<ResetPasswordResult> resetPassword(String username) async {
    return await Amplify.Auth.resetPassword(username: username);
  }

  @override
  Future<UpdatePasswordResult> confirmPassword(
      String username, String code, String newPassword) async {
    return await Amplify.Auth.confirmPassword(
        username: username, confirmationCode: code, newPassword: newPassword);
  }

  Future<AmplifyConfig> waitForConfiguration() async {
    return await Amplify.asyncConfig;
  }
}

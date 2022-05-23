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
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:collection/collection.dart';

abstract class AuthService {
  Future<SignInResult> signIn(String username, String password);

  Future<SignInResult> signInWithProvider(
    AuthProvider provider, {
    required bool preferPrivateSession,
  });

  Future<void> signOut();

  Future<SignUpResult> signUp(
    String username,
    String password,
    Map<CognitoUserAttributeKey, String> authAttributes,
  );

  Future<SignUpResult> confirmSignUp(String username, String code);

  Future<AuthUser?> get currentUser;

  Future<bool> isValidSession();

  Future<bool> get isLoggedIn;

  Future<ResetPasswordResult> resetPassword(String username);

  Future<UpdatePasswordResult> confirmResetPassword(
    String username,
    String code,
    String newPassword,
  );

  Future<SignInResult> confirmSignIn({
    required String confirmationValue,
    Map<CognitoUserAttributeKey, String>? attributes,
  });

  Future<ResendSignUpCodeResult> resendSignUpCode(String username);

  Future<GetAttributeVerificationStatusResult> getAttributeVerificationStatus();

  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required CognitoUserAttributeKey userAttributeKey,
  });

  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required CognitoUserAttributeKey userAttributeKey,
    required String confirmationCode,
  });
  Future<AmplifyConfig> waitForConfiguration();

  Future<void> rememberDevice();
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
  Future<SignInResult> signInWithProvider(
    AuthProvider provider, {
    required bool preferPrivateSession,
  }) {
    return Amplify.Auth.signInWithWebUI(
      provider: provider,
      options: CognitoSignInWithWebUIOptions(
        isPreferPrivateSession: preferPrivateSession,
      ),
    );
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode(String username) {
    return Amplify.Auth.resendSignUpCode(username: username);
  }

  @override
  Future<SignUpResult> signUp(
    String username,
    String password,
    Map<CognitoUserAttributeKey, String> attributes,
  ) {
    return Amplify.Auth.signUp(
      username: username,
      password: password,
      options: CognitoSignUpOptions(
        userAttributes: attributes,
      ),
    );
  }

  @override
  Future<SignUpResult> confirmSignUp(String username, String code) {
    return Amplify.Auth.confirmSignUp(
      username: username,
      confirmationCode: code,
    );
  }

  @override
  Future<SignInResult> confirmSignIn({
    required String confirmationValue,
    Map<CognitoUserAttributeKey, String>? attributes,
  }) {
    return Amplify.Auth.confirmSignIn(
      confirmationValue: confirmationValue,
      options: CognitoConfirmSignInOptions(userAttributes: attributes),
    );
  }

  @override
  Future<void> rememberDevice() {
    return Amplify.Auth.rememberDevice();
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
  Future<bool> isValidSession() async {
    try {
      var res = await Amplify.Auth.fetchAuthSession(
              options: const CognitoSessionOptions(getAWSCredentials: true))
          as CognitoAuthSession;
      return res.userPoolTokens != null;
    } on SignedOutException {
      return false;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<ResetPasswordResult> resetPassword(String username) {
    return Amplify.Auth.resetPassword(username: username);
  }

  @override
  Future<UpdatePasswordResult> confirmResetPassword(
    String username,
    String code,
    String newPassword,
  ) {
    return Amplify.Auth.confirmResetPassword(
      username: username,
      confirmationCode: code,
      newPassword: newPassword,
    );
  }

  @override
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required CognitoUserAttributeKey userAttributeKey,
  }) {
    return Amplify.Auth.resendUserAttributeConfirmationCode(
      userAttributeKey: userAttributeKey,
    );
  }

  @override
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required CognitoUserAttributeKey userAttributeKey,
    required String confirmationCode,
  }) {
    return Amplify.Auth.confirmUserAttribute(
      userAttributeKey: userAttributeKey,
      confirmationCode: confirmationCode,
    );
  }

  /// Returns a list of verified and unverified attributes
  ///
  /// This is based off of `verifiedContact()` from amplify-js
  /// https://github.com/aws-amplify/amplify-js/blob/6de9a1d743deef8de5205590bf7cf8134a5fb5f4/packages/auth/src/Auth.ts#L1199-L1224
  @override
  Future<GetAttributeVerificationStatusResult>
      getAttributeVerificationStatus() async {
    final List<AuthUserAttribute> userAttributes =
        await Amplify.Auth.fetchUserAttributes();

    var verifiableAttributes = userAttributes
        .map((e) => e.userAttributeKey)
        .cast<CognitoUserAttributeKey>()
        .where((element) =>
            element == CognitoUserAttributeKey.email ||
            element == CognitoUserAttributeKey.phoneNumber)
        .toList();

    bool attributeIsVerified(CognitoUserAttributeKey userAttributeKey) {
      return userAttributes
              .firstWhereOrNull((attr) =>
                  attr.userAttributeKey.key ==
                  '${userAttributeKey.key}_verified')
              ?.value ==
          'true';
    }

    var verifiedAttributes =
        verifiableAttributes.where(attributeIsVerified).toList();
    var unverifiedAttributes = verifiableAttributes
        .where((attribute) => !attributeIsVerified(attribute))
        .toList();

    return GetAttributeVerificationStatusResult(
      verifiedAttributes: verifiedAttributes,
      unverifiedAttributes: unverifiedAttributes,
    );
  }

  @override
  Future<AmplifyConfig> waitForConfiguration() {
    return Amplify.asyncConfig;
  }
}

class GetAttributeVerificationStatusResult {
  final List<CognitoUserAttributeKey> verifiedAttributes;
  final List<CognitoUserAttributeKey> unverifiedAttributes;

  GetAttributeVerificationStatusResult({
    required this.verifiedAttributes,
    required this.unverifiedAttributes,
  });
}

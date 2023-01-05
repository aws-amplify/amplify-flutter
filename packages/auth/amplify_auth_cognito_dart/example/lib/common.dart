// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

import 'amplifyconfiguration.dart';

AmplifyConfig loadConfig() {
  return AmplifyConfig.fromJson(
    jsonDecode(amplifyconfig) as Map<String, Object?>,
  );
}

Future<SignInResult> signIn({
  required String username,
  required String password,
}) async {
  return Amplify.Auth.signIn(
    username: username,
    password: password,
  );
}

Future<SignInResult> hostedSignIn({
  AuthProvider? provider,
}) async {
  return Amplify.Auth.signInWithWebUI(provider: provider);
}

Future<ResetPasswordResult> forgotPassword({required String username}) {
  return Amplify.Auth.resetPassword(username: username);
}

Future<SignInResult> confirmSignIn(
  String confirmationValue, {
  Map<CognitoUserAttributeKey, String>? userAttributes,
}) {
  return Amplify.Auth.confirmSignIn(
    confirmationValue: confirmationValue,
    options: CognitoConfirmSignInOptions(
      userAttributes: userAttributes,
    ),
  );
}

Future<ResetPasswordResult> resetPassword({
  required String username,
}) {
  return Amplify.Auth.resetPassword(username: username);
}

Future<ResetPasswordResult> confirmResetPassword({
  required String username,
  required String newPassword,
  required String confirmationCode,
}) {
  return Amplify.Auth.confirmResetPassword(
    username: username,
    newPassword: newPassword,
    confirmationCode: confirmationCode,
  );
}

Future<void> changePassword({
  required String oldPassword,
  required String newPassword,
}) async {
  await Amplify.Auth.updatePassword(
    oldPassword: oldPassword,
    newPassword: newPassword,
  );
}

Future<CognitoAuthSession> fetchAuthSession() async {
  final res = await Amplify.Auth.fetchAuthSession(
    options: const CognitoSessionOptions(
      getAWSCredentials: true,
    ),
  );
  return res as CognitoAuthSession;
}

Future<List<AuthUserAttribute>> fetchUserAttributes() async {
  return Amplify.Auth.fetchUserAttributes();
}

Future<List<AuthDevice>> fetchDevices() async {
  return Amplify.Auth.fetchDevices();
}

Future<void> rememberDevice() async {
  await Amplify.Auth.rememberDevice();
}

Future<void> forgetDevice() async {
  await Amplify.Auth.forgetDevice();
}

Future<UpdateUserAttributeResult> updateUserAttribute({
  required AuthUserAttributeKey key,
  required String value,
  CognitoUpdateUserAttributeOptions? options,
}) async {
  return Amplify.Auth.updateUserAttribute(
    userAttributeKey: key,
    value: value,
    options: options,
  );
}

Future<Map<AuthUserAttributeKey, UpdateUserAttributeResult>>
    updateUserAttributes({
  required List<AuthUserAttribute> attributes,
  CognitoUpdateUserAttributesOptions? options,
}) async {
  return Amplify.Auth.updateUserAttributes(
    attributes: attributes,
    options: options,
  );
}

Future<ConfirmUserAttributeResult> confirmUserAttribute({
  required AuthUserAttributeKey key,
  required String confirmationCode,
}) async {
  return Amplify.Auth.confirmUserAttribute(
    userAttributeKey: key,
    confirmationCode: confirmationCode,
  );
}

Future<ResendUserAttributeConfirmationCodeResult>
    resendUserAttributeConfirmationCode({
  required AuthUserAttributeKey key,
  CognitoResendUserAttributeConfirmationCodeOptions? options,
}) async {
  return Amplify.Auth.resendUserAttributeConfirmationCode(
    userAttributeKey: key,
    options: options,
  );
}

Future<void> signOut({required bool globalSignOut}) async {
  await Amplify.Auth.signOut(
    options: SignOutOptions(globalSignOut: globalSignOut),
  );
}

Future<void> deleteUser() async {
  await Amplify.Auth.deleteUser();
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

import 'amplifyconfiguration.dart';

Future<void> configure({
  HostedUiPlatformFactory? hostedUiPlatformFactory,
}) async {
  await Amplify.addPlugin(
    AmplifyAuthCognitoDart(
      credentialStorage: AmplifySecureStorageWorker(
        config: AmplifySecureStorageConfig.byNamespace(
          namespace: 'dart-auth-test',
        ).rebuild((config) {
          // enabling useDataProtection requires adding the app to an
          // app group, which requires setting a development team
          config.macOSOptions.useDataProtection = false;
        }),
      ),
      hostedUiPlatformFactory: hostedUiPlatformFactory,
    ),
  );

  const environmentName = String.fromEnvironment(
    'AMPLIFY_ENVIRONMENT',
    defaultValue: 'main',
  );
  await Amplify.configure(amplifyEnvironments[environmentName]!);
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
  final res = await Amplify.Auth.fetchAuthSession();
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

Future<CognitoSignOutResult> signOut({required bool globalSignOut}) async {
  final plugin = Amplify.Auth.getPlugin(AmplifyAuthCognitoDart.pluginKey);
  return plugin.signOut(
    options: SignOutOptions(globalSignOut: globalSignOut),
  );
}

Future<void> deleteUser() async {
  await Amplify.Auth.deleteUser();
}

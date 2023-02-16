// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/common.dart';

Future<void> main() async {
  AWSLogger().logLevel = LogLevel.debug;
  try {
    await configure();
  } on Exception catch (e) {
    stderr.writeln('Could not configure: $e');
    exit(1);
  }
  final username = prompt(
    'Enter your username (or type "hosted" to login with Hosted UI): ',
  );

  if (username == 'hosted') {
    try {
      await hostedSignIn(provider: AuthProvider.cognito);
    } on Object catch (e, st) {
      exitError(e, st);
    }
  } else {
    final password = prompt('Enter your password: ');
    stdout.writeln('Logging in...');
    try {
      var res = await signIn(
        username: username,
        password: password,
      );
      while (!res.isSignedIn) {
        res = await _processSignInResult(
          res,
          username: username,
          password: password,
        );
      }
    } on Object catch (e, st) {
      exitError(e, st);
    }
  }

  stdout
    ..writeln('Successfully logged in')
    ..writeln();

  try {
    final session = await fetchAuthSession();
    stdout
      ..writeln('Session Details')
      ..writeln('---------------')
      ..writeln(
        'Access Token: ${session.userPoolTokensResult.value.accessToken.raw}',
      )
      ..writeln(
        'Refresh Token: ${session.userPoolTokensResult.value.refreshToken}',
      )
      ..writeln('ID Token: ${session.userPoolTokensResult.value.idToken.raw}')
      ..writeln();

    final attributes = await fetchUserAttributes();
    stdout
      ..writeln('User Attributes')
      ..writeln('---------------');
    for (final attribute in attributes) {
      stdout.writeln('${attribute.userAttributeKey}: ${attribute.value}');
    }
    stdout.writeln();

    stdout
      ..writeln('Devices')
      ..writeln('-------');
    try {
      final devices = await fetchDevices();
      if (devices.isEmpty) {
        stdout.writeln('No devices');
      } else {
        for (final device in devices) {
          stdout.writeln(
            '${device.name ?? device.id}: '
            '${device.asCognitoDevice.attributes}',
          );
        }
      }
      stdout.writeln();
    } on InvalidUserPoolConfigurationException {
      stdout.writeln('Device tracking is not enabled.');
    } on Object {
      rethrow;
    }
  } on Object catch (e, st) {
    exitError(e, st);
  }
}

Never exitError(Object error, [StackTrace? stackTrace]) {
  stderr.writeln(error);
  stderr.writeln(stackTrace);
  exit(1);
}

Future<SignInResult> _processSignInResult(
  SignInResult result, {
  required String username,
  required String password,
}) async {
  final nextStep = result.nextStep.signInStep;
  final missingAttributes =
      result.nextStep.missingAttributes.cast<CognitoUserAttributeKey>();
  switch (nextStep) {
    case AuthSignInStep.confirmSignInWithSmsMfaCode:
    case AuthSignInStep.confirmSignInWithCustomChallenge:
      final confirmationCode = prompt('Enter your confirmation code: ');
      return confirmSignIn(confirmationCode);
    case AuthSignInStep.confirmSignInWithNewPassword:
      final userAttributes = <CognitoUserAttributeKey, String>{};
      for (final missingAttribute in missingAttributes) {
        final attributeValue = prompt(
          'Enter value for attribute ($missingAttribute): ',
        );
        userAttributes[missingAttribute] = attributeValue;
      }
      final newPassword = prompt('Enter your new password: ');
      return confirmSignIn(
        newPassword,
        userAttributes: userAttributes,
      );
    case AuthSignInStep.resetPassword:
      final result = await resetPassword(username: username);
      stdout
        ..writeln('You must reset your password.')
        ..writeln(result);
      final newPassword = prompt('Enter your new password: ');
      final confirmationCode = prompt('Enter your confirmation code: ');
      final confirmResult = await confirmResetPassword(
        username: username,
        newPassword: newPassword,
        confirmationCode: confirmationCode,
      );
      stdout.writeln(confirmResult);
      return signIn(username: username, password: password);
    default:
      throw StateError('Unhandled case: $nextStep');
  }
}

String prompt(String prompt) {
  String? value;
  while (value == null || value.isEmpty) {
    stdout.write(prompt);
    value = stdin.readLineSync(encoding: utf8);
  }
  return value;
}

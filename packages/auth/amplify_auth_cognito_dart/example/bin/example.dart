// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:args/args.dart';
import 'package:cognito_example/common.dart';
import 'package:cognito_example/qr_code.dart';
import 'package:qr/qr.dart';

Future<void> main(List<String> args) async {
  AWSLogger().logLevel = LogLevel.debug;

  final argParser = ArgParser()
    ..addOption(
      'environment',
      abbr: 'e',
      help: 'The Amplify environment to configure',
      defaultsTo: 'main',
    );

  final argResults = argParser.parse(args);
  final environmentName = argResults['environment'] as String;

  try {
    await configure(environmentName: environmentName);
  } on Exception catch (e) {
    stderr.writeln('Could not configure: $e');
    exit(1);
  }

  await signOut(globalSignOut: false);

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
  final nextStep = result.nextStep;
  final signInStep = nextStep.signInStep;
  final missingAttributes =
      nextStep.missingAttributes.cast<CognitoUserAttributeKey>();
  switch (signInStep) {
    case AuthSignInStep.continueSignInWithMfaSelection:
      while (true) {
        final smsOrTotp =
            prompt('Which MFA method would you prefer (SMS/TOTP)? ');
        if (MfaType.values
            .map((t) => t.name)
            .contains(smsOrTotp.toLowerCase())) {
          return confirmSignIn(smsOrTotp);
        }
      }
    case AuthSignInStep.continueSignInWithTotpSetup:
      final setupUri =
          nextStep.totpSetupDetails!.getSetupUri(appName: 'AuthExample');
      final qrCode = QrCode.fromData(
        data: setupUri.toString(),
        errorCorrectLevel: QrErrorCorrectLevel.L,
      );
      final qrImage = QrImage(qrCode);
      stdout
        ..writeln('Scan the QR code with an authenticator app:')
        ..writeln(qrImage.renderConsoleText())
        ..writeln();
      final mfaCode = prompt('Enter an MFA code to confirm registration: ');
      return confirmSignIn(mfaCode);
    case AuthSignInStep.confirmSignInWithTotpMfaCode:
      final mfaCode = prompt(
        switch (nextStep.codeDeliveryDetails?.destination) {
          final deviceName? => 'Enter an MFA code (sent to "$deviceName"): ',
          _ => 'Enter an MFA code (sent to registered authenticator app): ',
        },
      );
      return confirmSignIn(mfaCode);
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
    case final unhandledStep:
      throw StateError('Unhandled step: $unhandledStep');
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

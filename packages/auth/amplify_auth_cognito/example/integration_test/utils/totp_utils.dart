// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:otp/otp.dart';

import '../test_runner.dart';

/// The device name given to the default TOTP authenticator.
const friendlyDeviceName = 'friendlyDeviceName';

/// The interval between TOTP codes, i.e. how long before they expire.
const Duration _totpInterval = Duration(seconds: 30);

/// Calculates the timestamp of the next TOTP code, based off the previous one, if any.
Future<int> get _nextTotpTime async {
  final now = DateTime.now();
  if (OTP.lastUsedTime == 0) {
    addTearDown(() {
      OTP.lastUsedTime = 0;
      OTP.lastUsedCounter = 0;
    });
    return now.millisecondsSinceEpoch;
  }
  // Cognito allows a +/- 1 interval range for codes and codes cannot be reused.
  final acceptableWindowEnd = now.add(_totpInterval);
  final nextTime = maxBy(
    [
      now,
      DateTime.fromMillisecondsSinceEpoch(
        OTP.lastUsedTime + _totpInterval.inMilliseconds,
      ),
    ],
    (dt) => dt,
  )!;
  if (nextTime.isAfter(acceptableWindowEnd)) {
    // Wait until the next window opens.
    await Future<void>.delayed(nextTime.difference(now));
  }
  return nextTime.millisecondsSinceEpoch;
}

String? _secretCode;
Future<void> setUpTotp() async {
  if (_secretCode != null) {
    throw StateError('Cannot reconfigure TOTP');
  }
  addTearDown(() => _secretCode = null);

  final totpSetupResult = await cognitoPlugin.setupTotp();
  _secretCode = totpSetupResult.secretCode;
  await cognitoPlugin.verifyTotpSetup(
    await generateTotpCode(),
    options: const VerifyTotpSetupOptions(
      pluginOptions: CognitoVerifyTotpSetupPluginOptions(
        friendlyDeviceName: friendlyDeviceName,
      ),
    ),
  );
}

/// Generates a TOTP code for the given [secretCode] assigned by Cognito.
Future<String> generateTotpCode([String? secretCode]) async =>
    OTP.generateTOTPCodeString(
      secretCode ?? _secretCode!,
      await _nextTotpTime,

      // These parameters are needed to match what Cognito expects.
      algorithm: Algorithm.SHA1,
      isGoogle: true,
      interval: _totpInterval.inSeconds,
    );

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:otp/otp.dart';

/// The device name given to the default TOTP authenticator.
const friendlyDeviceName = 'friendlyDeviceName';

/// The interval between TOTP codes, i.e. how long before they expire.
const int _totpIntervalSecs = 30;

/// Tracks the last TOTP counter used to avoid code reuse.
int _lastUsedCounter = 0;

/// Returns a timestamp (ms) for the next unique TOTP code.
///
/// Cognito accepts codes from the current counter ± 1, so we can generate
/// codes for the next counter without waiting in most cases. We only wait
/// if the required counter exceeds the acceptable window.
Future<int> get _nextTotpTime async {
  final nowMs = DateTime.now().millisecondsSinceEpoch;
  final currentCounter = nowMs ~/ 1000 ~/ _totpIntervalSecs;

  if (_lastUsedCounter == 0) {
    addTearDown(() {
      _lastUsedCounter = 0;
      OTP.lastUsedTime = 0;
      OTP.lastUsedCounter = 0;
    });
    _lastUsedCounter = currentCounter;
    return nowMs;
  }

  // Need a counter different from the last one used.
  final nextCounter = _lastUsedCounter + 1;
  // Cognito accepts current counter ± 1, so max acceptable is current + 1.
  final maxAcceptable = currentCounter + 1;

  if (nextCounter > maxAcceptable) {
    // Wait until the counter we need falls within the acceptable window.
    final targetMs = nextCounter * _totpIntervalSecs * 1000;
    final waitMs = targetMs - nowMs + 1000; // +1s buffer
    await Future<void>.delayed(Duration(milliseconds: waitMs));
  }

  _lastUsedCounter = nextCounter;
  return nextCounter * _totpIntervalSecs * 1000;
}

String? _sharedSecret;
Future<void> setUpTotp({String? deviceName = friendlyDeviceName}) async {
  if (_sharedSecret != null) {
    throw StateError('Cannot reconfigure TOTP');
  }
  addTearDown(() => _sharedSecret = null);

  final totpSetupResult = await Amplify.Auth.setUpTotp();
  _sharedSecret = totpSetupResult.sharedSecret;
  await Amplify.Auth.verifyTotpSetup(
    await generateTotpCode(),
    options: VerifyTotpSetupOptions(
      pluginOptions: CognitoVerifyTotpSetupPluginOptions(
        friendlyDeviceName: deviceName,
      ),
    ),
  );
}

/// Generates a TOTP code for the given [sharedSecret] assigned by Cognito.
Future<String> generateTotpCode([String? sharedSecret]) async =>
    OTP.generateTOTPCodeString(
      sharedSecret ?? _sharedSecret!,
      await _nextTotpTime,

      // These parameters are needed to match what Cognito expects.
      algorithm: Algorithm.SHA1,
      isGoogle: true,
      interval: _totpIntervalSecs,
    );

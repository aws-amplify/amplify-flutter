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
/// Cognito accepts codes from the current counter ± 1 but rejects reused
/// counters. We can generate a code for counter+1 without waiting (Cognito
/// accepts it as a future-window code). We only need to wait when the
/// required counter exceeds current+1.
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

  // We need a counter > _lastUsedCounter to avoid code reuse.
  final neededCounter = _lastUsedCounter + 1;
  // Cognito accepts current ± 1, so max acceptable is current + 1.
  final maxAcceptable = currentCounter + 1;

  if (neededCounter <= maxAcceptable) {
    // We can use this counter without waiting.
    _lastUsedCounter = neededCounter;
    // Return a timestamp that maps to neededCounter.
    return neededCounter * _totpIntervalSecs * 1000;
  }

  // neededCounter > currentCounter + 1: wait until real time catches up
  // so that neededCounter falls within the acceptable window.
  final targetMs = (neededCounter - 1) * _totpIntervalSecs * 1000;
  final waitMs = targetMs - nowMs + 500; // +500ms buffer
  if (waitMs > 0) {
    await Future<void>.delayed(Duration(milliseconds: waitMs));
  }

  _lastUsedCounter = neededCounter;
  return neededCounter * _totpIntervalSecs * 1000;
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

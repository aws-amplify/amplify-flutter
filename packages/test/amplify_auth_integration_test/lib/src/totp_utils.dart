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
/// Cognito rejects reused codes, so we must ensure each call uses a different
/// counter. When the current real-time counter equals the last used one, we
/// wait until the next 30-second boundary instead of a full 30 seconds.
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

  if (currentCounter > _lastUsedCounter) {
    // Real time has already advanced past the last used counter.
    _lastUsedCounter = currentCounter;
    return nowMs;
  }

  // Current counter == last used counter; wait for the next boundary.
  final nextBoundaryMs = (_lastUsedCounter + 1) * _totpIntervalSecs * 1000;
  final waitMs = nextBoundaryMs - nowMs + 500; // +500ms buffer
  await Future<void>.delayed(Duration(milliseconds: waitMs));

  _lastUsedCounter = _lastUsedCounter + 1;
  return DateTime.now().millisecondsSinceEpoch;
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

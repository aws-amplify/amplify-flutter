// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

/// Smoke test: proves dart2wasm compilation + browser execution works.
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
    });

    test('core types are functional', () {
      const device = CognitoDevice(id: 'device-id', name: 'device-name');
      expect(device.id, 'device-id');
      expect(device.name, 'device-name');
    });

    test('exceptions are functional', () {
      const exception = DeviceNotTrackedException();
      expect(exception, isA<AuthServiceException>());
      expect(exception.runtimeTypeName, 'DeviceNotTrackedException');
    });
  });
}

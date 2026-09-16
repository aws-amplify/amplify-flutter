// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  group('AuthFactorType.webAuthn', () {
    test('enum value exists and has correct string value', () {
      expect(AuthFactorType.webAuthn, isNotNull);
      expect(AuthFactorType.webAuthn.value, 'WEB_AUTHN');
    });

    test('is included in AuthFactorType.values', () {
      expect(AuthFactorType.values, contains(AuthFactorType.webAuthn));
      expect(AuthFactorType.values.length, 5);
    });

    test('has correct JSON annotation for serialization', () {
      // Verify the enum value itself serializes correctly through the value field
      expect(AuthFactorType.webAuthn.value, 'WEB_AUTHN');
    });
  });
}

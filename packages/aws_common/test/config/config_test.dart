// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/src/config/aws_config_value.dart';
import 'package:test/test.dart';

void main() {
  group('AWSConfigValue', () {
    test('uses overrides', () {
      expect(
        AWSConfigValue.maxAttempts.value,
        equals(AWSConfigValue.maxAttempts.defaultValue),
      );

      const maxAttempts = 123;
      runZoned(
        () {
          expect(AWSConfigValue.maxAttempts.value, equals(maxAttempts));
        },
        zoneValues: {
          AWSConfigValue.maxAttempts: 123,
        },
      );
    });

    test('parses overrides', () {
      expect(
        AWSConfigValue.maxAttempts.value,
        equals(AWSConfigValue.maxAttempts.defaultValue),
      );

      const maxAttempts = 123;
      runZoned(
        () {
          expect(AWSConfigValue.maxAttempts.value, equals(maxAttempts));
        },
        zoneValues: {
          AWSConfigValue.maxAttempts: '123',
        },
      );
    });

    test('throws when override cannot be parsed', () {
      expect(
        AWSConfigValue.maxAttempts.value,
        equals(AWSConfigValue.maxAttempts.defaultValue),
      );

      runZoned(
        () {
          expect(
            () => AWSConfigValue.maxAttempts.value,
            throwsA(isA<FormatException>()),
          );
        },
        zoneValues: {
          AWSConfigValue.maxAttempts: 'abc',
        },
      );
    });
  });
}

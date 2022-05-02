// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
      runZoned(() {
        expect(AWSConfigValue.maxAttempts.value, equals(maxAttempts));
      }, zoneValues: {
        AWSConfigValue.maxAttempts: 123,
      });
    });

    test('parses overrides', () {
      expect(
        AWSConfigValue.maxAttempts.value,
        equals(AWSConfigValue.maxAttempts.defaultValue),
      );

      const maxAttempts = 123;
      runZoned(() {
        expect(AWSConfigValue.maxAttempts.value, equals(maxAttempts));
      }, zoneValues: {
        AWSConfigValue.maxAttempts: '123',
      });
    });

    test('throws when override cannot be parsed', () {
      expect(
        AWSConfigValue.maxAttempts.value,
        equals(AWSConfigValue.maxAttempts.defaultValue),
      );

      runZoned(() {
        expect(
          () => AWSConfigValue.maxAttempts.value,
          throwsA(isA<FormatException>()),
        );
      }, zoneValues: {
        AWSConfigValue.maxAttempts: 'abc',
      });
    });
  });
}

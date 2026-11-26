// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_liveness/aws_liveness.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FaceLivenessErrorCode.fromPlatformCode', () {
    test('parses every code by name', () {
      for (final code in FaceLivenessErrorCode.values) {
        expect(FaceLivenessErrorCode.fromPlatformCode(code.name), code);
      }
    });

    test('falls back to unknown', () {
      expect(
        FaceLivenessErrorCode.fromPlatformCode('notACode'),
        FaceLivenessErrorCode.unknown,
      );
    });
  });

  test('FaceLivenessException defaults and toString', () {
    const exception = FaceLivenessException(
      code: FaceLivenessErrorCode.sessionTimedOut,
      message: 'Session timed out.',
    );

    expect(
      exception.recoverySuggestion,
      'Create a new Face Liveness session and retry.',
    );
    expect(
      exception.toString(),
      'FaceLivenessException(sessionTimedOut): Session timed out.\n'
      'Recovery suggestion: Create a new Face Liveness session and retry.',
    );
  });
}

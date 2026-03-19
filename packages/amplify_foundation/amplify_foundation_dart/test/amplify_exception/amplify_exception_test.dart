// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Amplify Exception Test', () {
    const message = 'test message';
    const recoverySuggestion = 'test recoverySuggestion';
    final cause = Object();

    final exception = AmplifyExceptionTest(
      message: message,
      recoverySuggestion: recoverySuggestion,
      cause: cause,
    );

    test('fields are set', () {
      expect(exception.message, message);
      expect(exception.recoverySuggestion, recoverySuggestion);
      expect(exception.cause, cause);
    });
  });
}

class AmplifyExceptionTest extends AmplifyException {
  AmplifyExceptionTest({
    required super.message,
    required super.recoverySuggestion,
    super.cause,
  }) : super();
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:test/test.dart';

void main() {
  group('LambdaException', () {
    const error = 'something bad happened';
    const message = 'PreConfirmation failed with error $error.';

    test('matches string', () {
      expect(LambdaException.isLambdaException(message), isTrue);

      final exception = LambdaException(message);
      expect(exception.message, error);
      expect(exception.lambdaName, 'PreConfirmation');
    });

    test('matches exception', () {
      const wrapped = UserNotConfirmedException(message);
      expect(LambdaException.isLambdaException(wrapped.toString()), isTrue);

      final exception = LambdaException(wrapped.toString());
      expect(exception.message, error);
      expect(exception.lambdaName, 'PreConfirmation');
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    show NotAuthorizedServiceException, UserNotFoundException;
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:test/test.dart';

void main() {
  group('signInErrorMeansUnused', () {
    test('UserNotFoundException means the number is unused', () {
      expect(
        signInErrorMeansUnused(
          const UserNotFoundException('User does not exist.'),
        ),
        isTrue,
      );
    });

    test('AuthNotAuthorizedException means the number is taken', () {
      expect(
        signInErrorMeansUnused(
          const NotAuthorizedServiceException(
            'Incorrect username or password.',
          ),
        ),
        isFalse,
      );
    });

    test('an unexpected error is rethrown', () {
      final error = Exception('boom');
      expect(() => signInErrorMeansUnused(error), throwsA(same(error)));
    });
  });
}

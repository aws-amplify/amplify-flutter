// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CognitoErrorType', () {
    test('fromErrorType maps known exceptions correctly', () {
      expect(
        CognitoErrorType.fromErrorType('UserNotFoundException'),
        CognitoErrorType.userNotFound,
      );
      expect(
        CognitoErrorType.fromErrorType('UsernameExistsException'),
        CognitoErrorType.usernameExists,
      );
    });

    test('fromErrorType returns unknown for unrecognized exceptions', () {
      expect(
        CognitoErrorType.fromErrorType('SomeRandomException'),
        CognitoErrorType.unknown,
      );
    });

    test('generates correct ARB keys', () {
      expect(
        CognitoErrorType.userNotFound.arbKey,
        'authenticatorCognitoErrorUserNotFound',
      );
      expect(
        CognitoErrorType.unknown.arbKey,
        'authenticatorCognitoErrorUnknown',
      );
    });
  });

  group('CognitoAuthenticatorException', () {
    test('wraps Cognito exceptions and provides access to metadata', () {
      const cognitoException = UserNotFoundException('User does not exist');
      final authenticatorException = AuthenticatorException(cognitoException);

      expect(authenticatorException, isA<CognitoAuthenticatorException>());

      final cognitoAuthException =
          authenticatorException as CognitoAuthenticatorException;

      expect(cognitoAuthException.cognitoException, cognitoException);
      expect(cognitoAuthException.message, 'User does not exist');
      expect(
        cognitoAuthException.getCognitoExceptionType(),
        CognitoErrorType.userNotFound,
      );
      expect(
        cognitoAuthException.getArbKey(),
        'authenticatorCognitoErrorUserNotFound',
      );
    });

    test('preserves showBanner flag', () {
      const cognitoException = UserNotFoundException('User not found');

      final exceptionWithBanner = AuthenticatorException(
        cognitoException,
        showBanner: true,
      );
      expect(exceptionWithBanner.showBanner, true);

      final exceptionWithoutBanner = AuthenticatorException(
        cognitoException,
        showBanner: false,
      );
      expect(exceptionWithoutBanner.showBanner, false);
    });
  });

  group('AuthenticatorException', () {
    test('handles non-Cognito exceptions', () {
      final exception = AuthenticatorException('Generic error');

      expect(exception, isNot(isA<CognitoAuthenticatorException>()));
      expect(exception, isA<AuthenticatorException>());
      expect(exception.message, 'Generic error');
    });

    test('handles string exceptions', () {
      final authenticatorException =
          AuthenticatorException('Simple error message');

      expect(
        authenticatorException,
        isNot(isA<CognitoAuthenticatorException>()),
      );
      expect(authenticatorException.message, 'Simple error message');
    });

    test('handles AmplifyException', () {
      const amplifyException = UnknownException('Unknown error');
      final authenticatorException = AuthenticatorException(amplifyException);

      expect(
        authenticatorException,
        isNot(isA<CognitoAuthenticatorException>()),
      );
      expect(authenticatorException.message, 'Unknown error');
    });

    test('toString returns underlying exception string', () {
      const cognitoException = UserNotFoundException('User not found');
      final authenticatorException = AuthenticatorException(cognitoException);

      expect(
        authenticatorException.toString(),
        contains('UserNotFoundException'),
      );
    });
  });
}

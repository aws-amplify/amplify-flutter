// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CognitoErrorType', () {
    test('fromErrorType maps SDK exception types correctly', () {
      // Test with actual SDK exception runtime types

      const notAuthorizedException = NotAuthorizedServiceException('Not authorized');
      expect(
        CognitoErrorType.fromErrorType(notAuthorizedException.runtimeType.toString()),
        CognitoErrorType.notAuthorized,
      );

      const userNotFoundException = UserNotFoundException('User not found');
      expect(
        CognitoErrorType.fromErrorType(userNotFoundException.runtimeType.toString()),
        CognitoErrorType.userNotFound,
      );

      const usernameExistsException = UsernameExistsException('Username exists');
      expect(
        CognitoErrorType.fromErrorType(usernameExistsException.runtimeType.toString()),
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
      const cognitoException = NotAuthorizedServiceException('Not authorized');
      final authenticatorException = AuthenticatorException(cognitoException);
      

      expect(authenticatorException, isA<CognitoAuthenticatorException>());

      
      final cognitoAuthException =
          authenticatorException as CognitoAuthenticatorException;
      expect(cognitoAuthException.cognitoException, cognitoException);
      expect(cognitoAuthException.message, 'Not authorized');
      expect(
        cognitoAuthException.getCognitoErrorType(),
        CognitoErrorType.notAuthorized,
      );
      expect(
        cognitoAuthException.getArbKey(),
        'authenticatorCognitoErrorNotAuthorized',
      );
    });

    test('preserves showBanner flag', () {
      const cognitoException = NotAuthorizedServiceException('Not authorized');

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
    test('handles string exceptions', () {
      final exception = AuthenticatorException('Generic error');

      expect(exception, isNot(isA<CognitoAuthenticatorException>()));
      expect(exception, isA<AuthenticatorException>());
      expect(exception.message, 'Generic error');
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
      const cognitoException = NotAuthorizedServiceException('Not authorized');
      final authenticatorException = AuthenticatorException(cognitoException);

      expect(
        authenticatorException.toString(),
        contains('NotAuthorizedServiceException'),
      );
    });
  });
}

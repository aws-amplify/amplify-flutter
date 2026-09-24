// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  group('PasskeyException', () {
    test('extends AuthException', () {
      const exception = PasskeyException('test message');
      expect(exception, isA<AuthException>());
    });

    test('can be constructed with const', () {
      const exception = PasskeyException(
        'test message',
        recoverySuggestion: 'test recovery',
      );
      expect(exception.message, 'test message');
      expect(exception.recoverySuggestion, 'test recovery');
    });
  });

  group('PasskeyNotSupportedException', () {
    test('extends PasskeyException', () {
      const exception = PasskeyNotSupportedException('test message');
      expect(exception, isA<PasskeyException>());
      expect(exception, isA<AuthException>());
    });

    test('has default recovery suggestion', () {
      const exception = PasskeyNotSupportedException('test message');
      expect(
        exception.recoverySuggestion,
        'Passkeys require a compatible device and operating system version.',
      );
    });

    test('allows custom recovery suggestion', () {
      const exception = PasskeyNotSupportedException(
        'test message',
        recoverySuggestion: 'custom suggestion',
      );
      expect(exception.recoverySuggestion, 'custom suggestion');
    });

    test('can be constructed with const', () {
      const exception = PasskeyNotSupportedException('test message');
      expect(exception.message, 'test message');
    });
  });

  group('PasskeyCancelledException', () {
    test('extends PasskeyException', () {
      const exception = PasskeyCancelledException('test message');
      expect(exception, isA<PasskeyException>());
      expect(exception, isA<AuthException>());
    });

    test('has default recovery suggestion', () {
      const exception = PasskeyCancelledException('test message');
      expect(
        exception.recoverySuggestion,
        'The passkey operation was cancelled. Please try again.',
      );
    });
  });

  group('PasskeyRegistrationFailedException', () {
    test('extends PasskeyException', () {
      const exception = PasskeyRegistrationFailedException('test message');
      expect(exception, isA<PasskeyException>());
      expect(exception, isA<AuthException>());
    });

    test('has default recovery suggestion', () {
      const exception = PasskeyRegistrationFailedException('test message');
      expect(
        exception.recoverySuggestion,
        'Failed to register passkey. Ensure your device supports passkeys and try again.',
      );
    });
  });

  group('PasskeyAssertionFailedException', () {
    test('extends PasskeyException', () {
      const exception = PasskeyAssertionFailedException('test message');
      expect(exception, isA<PasskeyException>());
      expect(exception, isA<AuthException>());
    });

    test('has default recovery suggestion', () {
      const exception = PasskeyAssertionFailedException('test message');
      expect(
        exception.recoverySuggestion,
        'Failed to authenticate with passkey. Ensure you have a registered passkey and try again.',
      );
    });
  });

  group('PasskeyRpMismatchException', () {
    test('extends PasskeyException', () {
      const exception = PasskeyRpMismatchException('test message');
      expect(exception, isA<PasskeyException>());
      expect(exception, isA<AuthException>());
    });

    test('has default recovery suggestion', () {
      const exception = PasskeyRpMismatchException('test message');
      expect(
        exception.recoverySuggestion,
        'The relying party ID does not match the application domain. Check your Cognito user pool configuration.',
      );
    });
  });

  group('exception hierarchy', () {
    test('all subtypes can be caught as PasskeyException', () {
      const exceptions = [
        PasskeyNotSupportedException('msg'),
        PasskeyCancelledException('msg'),
        PasskeyRegistrationFailedException('msg'),
        PasskeyAssertionFailedException('msg'),
        PasskeyRpMismatchException('msg'),
      ];

      for (final exception in exceptions) {
        expect(exception, isA<PasskeyException>());
      }
    });

    test('all subtypes can be caught as AuthException', () {
      const exceptions = [
        PasskeyNotSupportedException('msg'),
        PasskeyCancelledException('msg'),
        PasskeyRegistrationFailedException('msg'),
        PasskeyAssertionFailedException('msg'),
        PasskeyRpMismatchException('msg'),
      ];

      for (final exception in exceptions) {
        expect(exception, isA<AuthException>());
      }
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/config/amplify_outputs/auth/auth_outputs.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/passwordless_outputs.dart';
import 'package:test/test.dart';

void main() {
  group('PasswordlessOutputs', () {
    test('defaults all methods to disabled', () {
      expect(
        PasswordlessOutputs.fromJson(const {}),
        const PasswordlessOutputs(),
      );
    });

    test('parses enabled methods', () {
      final outputs = PasswordlessOutputs.fromJson(const {
        'email_otp_enabled': true,
        'sms_otp_enabled': true,
        'web_authn': <String, Object?>{},
      });

      expect(outputs.emailOtpEnabled, isTrue);
      expect(outputs.smsOtpEnabled, isTrue);
      expect(outputs.webAuthnEnabled, isTrue);
    });
  });

  group('AuthOutputs', () {
    test('existing configuration remains unchanged', () {
      final outputs = AuthOutputs.fromJson(const {'aws_region': 'us-east-1'});

      expect(outputs.passwordless, isNull);
      expect(outputs.toJson(), {
        'aws_region': 'us-east-1',
        'unauthenticated_identities_enabled': true,
      });
    });

    test('parses optional passwordless configuration', () {
      final outputs = AuthOutputs.fromJson(const {
        'aws_region': 'us-east-1',
        'passwordless': {
          'email_otp_enabled': true,
          'web_authn': <String, Object?>{},
        },
      });

      expect(
        outputs.passwordless,
        const PasswordlessOutputs(emailOtpEnabled: true, webAuthnEnabled: true),
      );
      expect(outputs.toJson(), isNot(contains('passwordless')));
    });
  });
}

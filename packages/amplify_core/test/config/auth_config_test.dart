// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

// ignore_for_file: deprecated_member_use_from_same_package
import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

import 'testdata/test_values.dart';
import 'utils/remove_deprecated_key.dart';

void main() {
  group('Config', () {
    group('Auth', () {
      void testDirectory(String dir) {
        final directory = Directory(dir);
        for (final file in directory.listSync()) {
          final name = path.basenameWithoutExtension(file.path);
          test(name, () {
            final json = File(file.path).readAsStringSync();
            final configJson = jsonDecode(json) as Map<String, Object?>;
            final expectedJson = removeDeprecatedKeys(configJson);
            final config = AmplifyConfig.fromJson(configJson);
            final expectedConfig = expected[name]!;
            final cognitoConfig = config.auth!.awsPlugin!.auth!.default$!;
            expect(cognitoConfig, equals(expectedConfig));
            expect(
              expectedConfig.toJson(),
              equals(
                // ignore: avoid_dynamic_calls
                (expectedJson['auth']
                    as Map)['plugins']['awsCognitoAuthPlugin']['Auth']['Default'],
              ),
            );
          });
        }
      }

      group('Old', () {
        testDirectory('test/config/testdata/auth/old');
      });

      group('Zero Config', () {
        testDirectory('test/config/testdata/auth/zero_config');
      });
    });
  });
}

const expected = <String, CognitoAuthConfig>{
  'auth_with_all_attributes': CognitoAuthConfig(
    signupAttributes: [
      CognitoUserAttributeKey.address,
      CognitoUserAttributeKey.birthdate,
      CognitoUserAttributeKey.email,
      CognitoUserAttributeKey.familyName,
      CognitoUserAttributeKey.middleName,
      CognitoUserAttributeKey.gender,
      CognitoUserAttributeKey.locale,
      CognitoUserAttributeKey.givenName,
      CognitoUserAttributeKey.name,
      CognitoUserAttributeKey.nickname,
      CognitoUserAttributeKey.phoneNumber,
      CognitoUserAttributeKey.preferredUsername,
      CognitoUserAttributeKey.picture,
      CognitoUserAttributeKey.profile,
      CognitoUserAttributeKey.updatedAt,
      CognitoUserAttributeKey.website,
      CognitoUserAttributeKey.zoneinfo,
    ],
    passwordProtectionSettings: PasswordProtectionSettings(
      passwordPolicyMinLength: 8,
    ),
    mfaConfiguration: MfaConfiguration.off,
    mfaTypes: [MfaType.sms],
    verificationMechanisms: [CognitoUserAttributeKey.email],
    socialProviders: [],
    usernameAttributes: [],
  ),
  'auth_with_email': CognitoAuthConfig(
    signupAttributes: [CognitoUserAttributeKey.email],
    passwordProtectionSettings: PasswordProtectionSettings(
      passwordPolicyMinLength: 8,
      passwordPolicyCharacters: [
        PasswordPolicyCharacters.requiresLowercase,
        PasswordPolicyCharacters.requiresNumbers,
        PasswordPolicyCharacters.requiresSymbols,
        PasswordPolicyCharacters.requiresUppercase,
      ],
    ),
    mfaConfiguration: MfaConfiguration.off,
    mfaTypes: [MfaType.sms],
    verificationMechanisms: [CognitoUserAttributeKey.email],
    socialProviders: [],
    usernameAttributes: [CognitoUserAttributeKey.email],
  ),
  'auth_with_multi_alias': CognitoAuthConfig(
    signupAttributes: [
      CognitoUserAttributeKey.email,
      CognitoUserAttributeKey.phoneNumber,
    ],
    passwordProtectionSettings: PasswordProtectionSettings(
      passwordPolicyMinLength: 8,
    ),
    mfaConfiguration: MfaConfiguration.off,
    mfaTypes: [MfaType.sms],
    socialProviders: [],
    usernameAttributes: [],
    verificationMechanisms: [CognitoUserAttributeKey.email],
  ),
  'auth_with_username_no_attributes': CognitoAuthConfig(
    signupAttributes: [CognitoUserAttributeKey.email],
    passwordProtectionSettings: PasswordProtectionSettings(
      passwordPolicyMinLength: 8,
    ),
    mfaConfiguration: MfaConfiguration.off,
    mfaTypes: [MfaType.sms],
    verificationMechanisms: [CognitoUserAttributeKey.email],
    socialProviders: [],
    usernameAttributes: [],
  ),
  'auth_with_email_or_phone': CognitoAuthConfig(
    socialProviders: [],
    usernameAttributes: [
      CognitoUserAttributeKey.email,
      CognitoUserAttributeKey.phoneNumber,
    ],
    signupAttributes: [
      CognitoUserAttributeKey.email,
      CognitoUserAttributeKey.phoneNumber,
    ],
    passwordProtectionSettings: PasswordProtectionSettings(
      passwordPolicyMinLength: 8,
    ),
    mfaConfiguration: MfaConfiguration.on,
    mfaTypes: [MfaType.sms],
    verificationMechanisms: [CognitoUserAttributeKey.email],
  ),
  'auth_with_federated': CognitoAuthConfig(
    oAuth: CognitoOAuthConfig(
      appClientId: APPCLIENT_ID,
      scopes: [
        'phone',
        'email',
        'openid',
        'profile',
        'aws.cognito.signin.user.admin',
      ],
      signInRedirectUri: OAUTH_SIGNIN,
      signOutRedirectUri: OAUTH_SIGNOUT,
      webDomain: OAUTH_DOMAIN,
    ),
    socialProviders: [
      SocialProvider.facebook,
      SocialProvider.google,
      SocialProvider.amazon,
    ],
    usernameAttributes: [CognitoUserAttributeKey.email],
    signupAttributes: [CognitoUserAttributeKey.email],
    passwordProtectionSettings: PasswordProtectionSettings(
      passwordPolicyMinLength: 8,
      passwordPolicyCharacters: [
        PasswordPolicyCharacters.requiresLowercase,
        PasswordPolicyCharacters.requiresNumbers,
        PasswordPolicyCharacters.requiresSymbols,
        PasswordPolicyCharacters.requiresUppercase,
      ],
    ),
    mfaConfiguration: MfaConfiguration.off,
    mfaTypes: [MfaType.sms],
    verificationMechanisms: [CognitoUserAttributeKey.email],
  ),
  'auth_with_username': CognitoAuthConfig(
    socialProviders: [],
    usernameAttributes: [],
    signupAttributes: [CognitoUserAttributeKey.preferredUsername],
    passwordProtectionSettings: PasswordProtectionSettings(
      passwordPolicyMinLength: 8,
      passwordPolicyCharacters: [
        PasswordPolicyCharacters.requiresLowercase,
        PasswordPolicyCharacters.requiresNumbers,
        PasswordPolicyCharacters.requiresSymbols,
        PasswordPolicyCharacters.requiresUppercase,
      ],
    ),
    mfaConfiguration: MfaConfiguration.off,
    mfaTypes: [MfaType.sms],
    verificationMechanisms: [CognitoUserAttributeKey.email],
  ),
};

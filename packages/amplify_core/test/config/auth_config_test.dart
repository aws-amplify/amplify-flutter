// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')

// ignore_for_file: deprecated_member_use_from_same_package

import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

import 'testdata/test_values.dart';

void main() {
  group('Config', () {
    group('Auth', () {
      void testDirectory(String dir) {
        final directory = Directory(dir);
        for (var file in directory.listSync()) {
          final name = path.basenameWithoutExtension(file.path);
          test(name, () {
            final json = File(file.path).readAsStringSync();
            final configJson = jsonDecode(json) as Map<String, Object?>;
            final config = AmplifyConfig.fromJson(configJson);
            final CognitoAuthConfig expectedConfig = expected[name]!;
            final cognitoConfig = config.auth!.awsPlugin!.auth!.default$!;
            expect(cognitoConfig, equals(expectedConfig));
            expect(
                expectedConfig.toJson(),
                equals(
                  (configJson['auth'] as Map)['plugins']['awsCognitoAuthPlugin']
                      ['Auth']['Default'],
                ));
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
    authenticationFlowType: AuthenticationFlowType.userSrpAuth,
    loginMechanisms: [
      CognitoUserAttributeKey.preferredUsername,
    ],
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
    mfaTypes: [
      MfaType.sms,
    ],
    verificationMechanisms: [
      CognitoUserAttributeKey.email,
    ],
    socialProviders: [],
    usernameAttributes: [],
  ),
  'auth_with_email': CognitoAuthConfig(
    authenticationFlowType: AuthenticationFlowType.userSrpAuth,
    loginMechanisms: [
      CognitoUserAttributeKey.email,
    ],
    signupAttributes: [
      CognitoUserAttributeKey.email,
    ],
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
    mfaTypes: [
      MfaType.sms,
    ],
    verificationMechanisms: [
      CognitoUserAttributeKey.email,
    ],
    socialProviders: [],
    usernameAttributes: [
      CognitoUserAttributeKey.email,
    ],
  ),
  'auth_with_multi_alias': CognitoAuthConfig(
    authenticationFlowType: AuthenticationFlowType.userSrpAuth,
    loginMechanism: [
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
    mfaConfiguration: MfaConfiguration.off,
    mfaTypes: [
      MfaType.sms,
    ],
    socialProviders: [],
    usernameAttributes: [],
    verificationMechanisms: [
      CognitoUserAttributeKey.email,
    ],
  ),
  'auth_with_username_no_attributes': CognitoAuthConfig(
    authenticationFlowType: AuthenticationFlowType.userSrpAuth,
    loginMechanisms: [
      CognitoUserAttributeKey.preferredUsername,
    ],
    signupAttributes: [
      CognitoUserAttributeKey.email,
    ],
    passwordProtectionSettings: PasswordProtectionSettings(
      passwordPolicyMinLength: 8,
    ),
    mfaConfiguration: MfaConfiguration.off,
    mfaTypes: [
      MfaType.sms,
    ],
    verificationMechanisms: [
      CognitoUserAttributeKey.email,
    ],
    socialProviders: [],
    usernameAttributes: [],
  ),
  'auth_with_email_or_phone': CognitoAuthConfig(
    authenticationFlowType: AuthenticationFlowType.userSrpAuth,
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
    mfaTypes: [
      MfaType.sms,
    ],
    verificationMechanisms: [
      CognitoUserAttributeKey.email,
    ],
  ),
  'auth_with_federated': CognitoAuthConfig(
    oAuth: CognitoOAuthConfig(
      appClientId: APPCLIENT_ID,
      scopes: [
        'phone',
        'email',
        'openid',
        'profile',
        'aws.cognito.signin.user.admin'
      ],
      signInRedirectUri: OAUTH_SIGNIN,
      signOutRedirectUri: OAUTH_SIGNOUT,
      webDomain: OAUTH_DOMAIN,
    ),
    authenticationFlowType: AuthenticationFlowType.userSrpAuth,
    socialProviders: [
      SocialProvider.facebook,
      SocialProvider.google,
      SocialProvider.amazon,
    ],
    usernameAttributes: [
      CognitoUserAttributeKey.email,
    ],
    signupAttributes: [
      CognitoUserAttributeKey.email,
    ],
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
    mfaTypes: [
      MfaType.sms,
    ],
    verificationMechanisms: [
      CognitoUserAttributeKey.email,
    ],
  ),
  'auth_with_username': CognitoAuthConfig(
    authenticationFlowType: AuthenticationFlowType.userSrpAuth,
    socialProviders: [],
    usernameAttributes: [],
    signupAttributes: [
      CognitoUserAttributeKey.preferredUsername,
    ],
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
    mfaTypes: [
      MfaType.sms,
    ],
    verificationMechanisms: [
      CognitoUserAttributeKey.email,
    ],
  ),
};

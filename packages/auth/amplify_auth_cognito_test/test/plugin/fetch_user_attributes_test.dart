// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide UpdateUserAttributesRequest;
import 'package:amplify_auth_cognito_dart/src/crypto/crypto.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:test/test.dart';

import '../common/mock_clients.dart';
import '../common/mock_config.dart';

String randomString(int len) => String.fromCharCodes(getRandomBytes(10));

// TODO(haverchuck): date, email and phone generators
final address = randomString(10);
const birthdate = '20220101';
const email = 'test@test.com';
const emailVerified = true;
final familyName = randomString(10);
final gender = randomString(10);
final givenName = randomString(10);
final locale = randomString(10);
final middleName = randomString(10);
final name = randomString(10);
final nickName = randomString(10);
const phoneNumber = '+15555555555';
const phoneNumberVerified = true;
final picture = randomString(10);
final preferredUsername = randomString(10);
final profile = randomString(10);
final updatedAt = DateTime.now().millisecondsSinceEpoch ~/ 1000;
final website = randomString(10);
final zoneinfo = randomString(10);

const customKey = 'custom:customKey';
const customValue = 'customValue';

final claims = <String, String>{
  'address': address,
  'birthdate': birthdate,
  'email_verified': emailVerified.toString(),
  'email': email,
  'family_name': familyName,
  'gender': gender,
  'given_name': givenName,
  'locale': locale,
  'middle_name': middleName,
  'name': name,
  'nickname': nickName,
  'phone_number': phoneNumber,
  'phone_number_verified': phoneNumberVerified.toString(),
  'picture': picture,
  'preferred_username': preferredUsername,
  'profile': profile,
  'updated_at': updatedAt.toString(),
  'website': website,
  'zoneinfo': zoneinfo,
  customKey: customValue,
};

class MockAmplifyAuthCognito extends AmplifyAuthCognitoDart {
  @override
  Future<CredentialStoreData> getCredentials() async {
    return CredentialStoreData(
      userPoolTokens: CognitoUserPoolTokens.build(
        (b) => b
          ..accessToken = JsonWebToken(
            header: const JsonWebHeader(algorithm: Algorithm.rsaSha256),
            claims: JsonWebClaims(
              customClaims: claims,
            ),
            signature: const [],
          )
          ..refreshToken = refreshToken
          ..idToken = idToken,
      ),
      signInDetails: const CognitoSignInDetails.apiBased(username: username),
    );
  }
}

void main() {
  late CognitoAuthStateMachine stateMachine;
  late AmplifyAuthCognitoDart plugin;

  setUp(() {
    stateMachine = CognitoAuthStateMachine();
    plugin = MockAmplifyAuthCognito()..stateMachine = stateMachine;
  });

  test('fetchUserAttributes', () async {
    stateMachine.addInstance<CognitoIdentityProviderClient>(
      MockCognitoIdentityProviderClient(
        getUser: () async => GetUserResponse(
          userAttributes: [
            for (final entry in claims.entries)
              AttributeType(name: entry.key, value: entry.value),
          ],
          username: username,
        ),
      ),
    );

    final res = await plugin.fetchUserAttributes();
    final expected = [
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.address,
        value: address,
      ),
      const AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.birthdate,
        value: birthdate,
      ),
      const AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.email,
        value: email,
      ),
      const AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.emailVerified,
        value: 'true',
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.familyName,
        value: familyName,
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.gender,
        value: gender,
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.givenName,
        value: givenName,
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.locale,
        value: locale,
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.middleName,
        value: middleName,
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.name,
        value: name,
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.nickname,
        value: nickName,
      ),
      const AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.phoneNumber,
        value: phoneNumber,
      ),
      const AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.phoneNumberVerified,
        value: 'true',
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.picture,
        value: picture,
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.preferredUsername,
        value: preferredUsername,
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.profile,
        value: profile,
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.updatedAt,
        value: updatedAt.toString(),
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.website,
        value: website,
      ),
      AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.zoneinfo,
        value: zoneinfo,
      ),
      const AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.custom(customKey),
        value: customValue,
      ),
    ];
    expect(res, hasLength(claims.length));
    expect(res, unorderedEquals(expected));
  });
}

/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_auth_cognito/method_channel_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

void main() {
  const MethodChannel authChannel =
      MethodChannel('com.amazonaws.amplify/auth_cognito');

  AmplifyAuthCognito auth = AmplifyAuthCognito();
  AmplifyAuthCognitoMethodChannel testChannel =
      AmplifyAuthCognitoMethodChannel();

  TestWidgetsFlutterBinding.ensureInitialized();
  List<Map<dynamic, dynamic>> sampleResponse = [
    {"key": "preferred_username", "value": "person"},
    {"key": "custom:num", "value": "2"},
    {"key": "custom:float_shouldnt_parse_shouldnt_break", "value": "1.234"}
  ];

  setUp(() {
    authChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "fetchUserAttributes") {
        return sampleResponse;
      } else {
        return true;
      }
    });
  });

  tearDown(() {
    authChannel.setMockMethodCallHandler(null);
  });

  test('fetchUserAttributes request returns a list of AuthUserAttributes',
      () async {
    var res = await auth.fetchUserAttributes(
        request:
            FetchUserAttributesRequest(options: FetchUserAttributesOptions()));
    expect(res, isInstanceOf<List<AuthUserAttribute>>());
    expect(res[0].userAttributeKey,
        equals(CognitoUserAttributeKey.preferredUsername));
    expect(res[0].value, equals('person'));
  });

  test(
      'formatFetchAttributesResponse accepts a list of maps and returns a list of AuthUserAttributes',
      () async {
    var res = await testChannel.formatFetchAttributesResponse(sampleResponse);
    expect(res, isInstanceOf<List<AuthUserAttribute>>());
    expect(res[0].userAttributeKey,
        equals(CognitoUserAttributeKey.preferredUsername));
    expect(res[0].value, equals('person'));
    expect(
        res[1].userAttributeKey, equals(CognitoUserAttributeKey.custom('num')));
    expect(res[1].value, equals('2'));
    expect(
      res[2].userAttributeKey,
      equals(
        CognitoUserAttributeKey.custom('float_shouldnt_parse_shouldnt_break'),
      ),
    );
    expect(res[2].value, equals("1.234"));
  });

  test('unknown cognito attribute', () {
    const invalidResponse = [
      {'key': 'unknown_cognito_key', 'value': 'someValue'},
    ];
    final res = testChannel.formatFetchAttributesResponse(invalidResponse);
    expect(
      res.single.userAttributeKey,
      allOf([
        isA<CognitoUserAttributeKey>(),
        predicate<CognitoUserAttributeKey>((attr) => attr.readOnly),
      ]),
    );
  });
}

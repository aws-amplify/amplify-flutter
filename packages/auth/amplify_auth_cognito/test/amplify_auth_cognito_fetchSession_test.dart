/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'dart:collection';

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

void main() {
  const MethodChannel authChannel =
      MethodChannel('com.amazonaws.amplify/auth_cognito');

  AmplifyAuthCognito auth = AmplifyAuthCognito();

  TestWidgetsFlutterBinding.ensureInitialized();

  int testCode = 0;

  setUp(() {
    authChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      switch (testCode) {
        case 1:
          return {
            "isSignedIn": true,
          };
        case 2:
          return throw PlatformException(
              code: "UnknownException",
              details: Map.from({"message": "I am an exception"}));
      }
    });
  });

  tearDown(() {
    authChannel.setMockMethodCallHandler(null);
  });

  test('fetchSession request returns a AuthCognitoSession', () async {
    testCode = 1;
    expect(await auth.fetchAuthSession(), isInstanceOf<CognitoAuthSession>());
  });

  test('fetchSession thrown PlatFormException results in AuthError', () async {
    testCode = 2;
    try {
      expect(await auth.fetchAuthSession(), isInstanceOf<SignInResult>());
    } on AuthException catch (e) {
      expect(e.message, "I am an exception");
      return;
    }
    fail("No AuthException Thrown");
  });

  test('CognitoAuthSession handles null tokens', () async {
    var rawValues = Map.from({"isSignedIn": true, "tokens": null});

    var session = CognitoAuthSession.init(sessionValues: rawValues);
    expect(session.userPoolTokens, null);
  });

  test('CognitoAuthSession handles tokens', () async {
    Map<dynamic, dynamic> tokens = {
      "accessToken": "access",
      "idToken": "id",
      "refreshToken": "refresh"
    };
    var rawValues = {"isSignedIn": true, "tokens": tokens};

    var session = CognitoAuthSession.init(sessionValues: rawValues);
    expect(
        session.userPoolTokens!.accessToken,
        AWSCognitoUserPoolTokens.init(
                tokens: tokens as LinkedHashMap<dynamic, dynamic>)
            .accessToken);
    expect(session.userPoolTokens!.idToken,
        AWSCognitoUserPoolTokens.init(tokens: tokens).idToken);
    expect(session.userPoolTokens!.refreshToken,
        AWSCognitoUserPoolTokens.init(tokens: tokens).refreshToken);
  });
}

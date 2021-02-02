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
      if (methodCall.method == "signUp") {
        switch (testCode) {
          case 1:
            return Map.of({
              "isSignUpComplete": false,
              "nextStep": {
                "signUpStep": "DONE",
                "codeDeliveryDetails": {"attributeName": "email"}
              }
            });
          case 2:
          return throw PlatformException(
            code: "UnknownException",
            details: Map.from({
              "message": "I am an exception"
            }));
        }
        ;
      }
      ;
    });
  });

  tearDown(() {
    authChannel.setMockMethodCallHandler(null);
  });

  test('signUp request returns a CognitoSignUpResult', () async {
    testCode = 1;
    var res = await auth.signUp(
        request: SignUpRequest(
            username: 'testUser',
            password: '123',
            options: CognitoSignUpOptions(userAttributes: {
              "email": "test@test.com",
            })));
    expect(res, isInstanceOf<SignUpResult>());
  });

  test('signUp request nextStep casts to AuthNextSignUpStep and AuthNextStep',
      () async {
    testCode = 1;
    var res = await auth.signUp(
        request: SignUpRequest(
            username: 'testUser',
            password: '123',
            options: CognitoSignUpOptions(userAttributes: {
              "email": "test@test.com",
            })));
    expect(res.nextStep, isInstanceOf<AuthNextSignUpStep>());
    expect(res.nextStep, isInstanceOf<AuthNextStep>());
  });

  test('signUp thrown PlatFormException results in AuthError', () async {
    testCode = 2;
    AuthException err;
    try {
      await auth.signUp(
          request: SignUpRequest(
              username: 'testUser',
              password: '123',
              options: CognitoSignUpOptions(userAttributes: {
                "email": "test@test.com",
              })));
    } on AuthException catch (e) {
      err = e;
    }
    expect(err.message, "I am an exception");
  });
}

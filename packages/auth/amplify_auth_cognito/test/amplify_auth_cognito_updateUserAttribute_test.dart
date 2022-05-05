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
      if (methodCall.method == "updateUserAttribute") {
        switch (testCode) {
          case 1:
            return Map.of({
              "isUpdated": true,
              "nextStep": {
                "updateAttributeStep": "DONE",
                "codeDeliveryDetails": {
                  "attributeName": "email",
                  "destination": "test@test.test"
                }
              }
            });
          case 2:
            return throw PlatformException(
              code: "UnknownException",
              details: Map.from({"message": "I am an exception"}),
            );
        }
      }
    });
  });

  tearDown(() {
    authChannel.setMockMethodCallHandler(null);
  });

  test('updateUserAttribute request returns a UpdateUserAttributeResult',
      () async {
    testCode = 1;
    var res = await auth.updateUserAttribute(
      request: UpdateUserAttributeRequest(
        userAttributeKey: CognitoUserAttributeKey.email,
        value: 'test@test.com',
      ),
    );
    expect(res, isInstanceOf<UpdateUserAttributeResult>());
  });

  test(
      'updateUserAttribute request nextStep casts to AuthNextUpdateAttributeStep and AuthNextStep',
      () async {
    testCode = 1;
    var res = await auth.updateUserAttribute(
      request: UpdateUserAttributeRequest(
        userAttributeKey: CognitoUserAttributeKey.email,
        value: 'test@test.com',
      ),
    );
    expect(res.nextStep, isInstanceOf<AuthNextUpdateAttributeStep>());
    expect(res.nextStep, isInstanceOf<AuthNextStep>());
  });

  test('updateUserAttribute thrown PlatFormException results in AuthError',
      () async {
    testCode = 2;
    try {
      await auth.updateUserAttribute(
        request: UpdateUserAttributeRequest(
          userAttributeKey: CognitoUserAttributeKey.email,
          value: 'test@test.com',
        ),
      );
    } on AuthException catch (e) {
      expect(e.message, "I am an exception");
    }
  });
}

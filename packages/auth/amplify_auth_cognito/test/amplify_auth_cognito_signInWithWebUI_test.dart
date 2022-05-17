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
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const MethodChannel authChannel =
      MethodChannel('com.amazonaws.amplify/auth_cognito');

  AmplifyAuthCognito auth = AmplifyAuthCognitoMethodChannel();

  var expected = CognitoSignInResult(
      isSignedIn: true,
      nextStep: AuthNextSignInStep(
          signInStep: "DONE",
          codeDeliveryDetails: AuthCodeDeliveryDetails(
              attributeName: CognitoUserAttributeKey.email.key,
              destination: "test@test.test"),
          additionalInfo: {}));

  setUp(() {
    authChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "signInWithWebUI") {
        return {
          "isSignedIn": true,
          "nextStep": {
            "signInStep": "DONE",
            "codeDeliveryDetails": {
              "attributeName": "email",
              "destination": "test@test.test"
            }
          }
        };
      } else {
        return false;
      }
    });
  });

  tearDown(() {
    authChannel.setMockMethodCallHandler(null);
  });

  test('signInWithWebUI (no providers) request returns SignInResult', () async {
    var res = await auth.signInWithWebUI();
    expect(res, isInstanceOf<SignInResult>());
    expect(res.isSignedIn, equals(expected.isSignedIn));
    expect(res.nextStep!.signInStep, equals(expected.nextStep!.signInStep));
    expect(res.nextStep!.codeDeliveryDetails!.attributeName,
        equals(expected.nextStep!.codeDeliveryDetails!.attributeName));
  });

  test('signInWithWebUI (with provider) request returns SignInResult',
      () async {
    var res = await auth.signInWithWebUI(
        request: SignInWithWebUIRequest(provider: AuthProvider.amazon));
    expect(res, isInstanceOf<SignInResult>());
    expect(res.isSignedIn, equals(expected.isSignedIn));
    expect(res.nextStep!.signInStep, equals(expected.nextStep!.signInStep));
    expect(res.nextStep!.codeDeliveryDetails!.attributeName,
        equals(expected.nextStep!.codeDeliveryDetails!.attributeName));
  });
}

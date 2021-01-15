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

  setUp(() {
    authChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "signInWithWebUI") {
        return {
          "isSignedIn": false,
          "nextStep": {
            "signInStep": "DONE",
            "codeDeliveryDetails": {"atttibuteName": "email"}
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

  test('signInWithWebUI (no providers) request returns a bool value', () async {
    expect(
        await auth.signInWithWebUI(),
        isInstanceOf<SignInResult>());
  });

    test('signInWithWebUI (with provider) request returns a bool value', () async {
    expect(
        await auth.signInWithWebUI(request: SignInWithWebUIRequest(provider: AuthProvider.login_with_amazon)),
        isInstanceOf<SignInResult>());
  });
}

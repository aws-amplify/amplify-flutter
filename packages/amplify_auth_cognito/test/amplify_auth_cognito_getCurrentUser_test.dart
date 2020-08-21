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
import 'package:amplify_core/amplify_core.dart';

void main() {
  const MethodChannel authChannel = MethodChannel('com.amazonaws.amplify/auth_cognito');
  const MethodChannel coreChannel = MethodChannel('com.amazonaws.amplify/core');

  Amplify amplify = Amplify();
  AmplifyAuthCognito auth = AmplifyAuthCognito();

  TestWidgetsFlutterBinding.ensureInitialized();

  int testCode = 0;

  setUp(() {
    authChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      switch(testCode) {
        case 1:
          return {
            "username": "testUser",
            "userSub": "testSub"
          };
          case 2:
            return throw PlatformException(code: "AMPLIFY_EXCEPTION", message: "AMPLIFY_GET_CURRENT_USER_FAILED", details: {});
      } 
    });
    coreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    authChannel.setMockMethodCallHandler(null);
    coreChannel.setMockMethodCallHandler(null);
  });

  test('getCurrentUser request returns an AuthUser', () async {
    testCode = 1;
    await amplify.addPlugin(authPlugins: [auth]);
    await amplify.configure("{}");
    expect(await Amplify.Auth.getCurrentUser(), isInstanceOf<AuthUser>());
  });

  test('PlatformException in getCurrentUser surfaces as AuthError', () async {
    testCode = 2;
    AuthError err;
   try {
    await Amplify.Auth.getCurrentUser();  
    } on AuthError catch (e) {
      err = e;
    } 
    expect(err.cause, "AMPLIFY_GET_CURRENT_USER_FAILED");
  });
}

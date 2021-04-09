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
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_api/amplify_api.dart';


void main() {

  const MethodChannel apiChannel = MethodChannel('com.amazonaws.amplify/api');

  AmplifyAPI api = AmplifyAPI();
  bool platformError = false;

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "addPlugin") {
        if (!platformError) {
          return true;
        } else {
          throw PlatformException(code: "AlreadyConfiguredException");
        }
      } else {
        return true;
      }
    });
  });

  tearDown(() {
    apiChannel.setMockMethodCallHandler(null);
  });


  test('Exception is not thrown if platform exception contains "AlreadyConfiguredException" code', () async {
    platformError = true;
    try {
      await Amplify.addPlugin(api);
    } catch (e) {
      fail("exception was thrown");
    }
  });

  test('AmplifyException is thrown if addPlugin called twice', () async {
    try {
      await Amplify.addPlugin(api);
      fail("exception not thrown");
    } catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e.message, 'Amplify plugin AmplifyAPI was not added successfully.');
    }
  });
}
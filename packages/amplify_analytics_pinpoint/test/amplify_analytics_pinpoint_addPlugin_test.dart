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
import 'package:amplify_analytics_plugin_interface/amplify_analytics_plugin_interface.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';


void main() {
  const MethodChannel analyticsChannel =
  MethodChannel('com.amazonaws.amplify/analytics_pinpoint');

  AmplifyAnalyticsPinpoint analytics = new AmplifyAnalyticsPinpoint();
  bool platformError = false;

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "addPlugin") {
        if (!platformError) {
          return true;
        } else {
          throw PlatformException(code: "AmplifyAlreadyConfiguredException");
        }
      } else {
        return true;
      }
    });
  });

  tearDown(() {
    analyticsChannel.setMockMethodCallHandler(null);
  });

  test('Exception is not thrown if platform exception contains "AmplifyAlreadyConfiguredException" code', () async {
    platformError = true;
    try {
      await Amplify.addPlugin(analytics);
    } catch (e) {
      fail("exception was thrown");
    }
  });

  test('AmplifyException is thrown if addPlugin called twice', () async {
    try {
      await Amplify.addPlugin(analytics);
      fail("exception not thrown");
    } catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e.message, 'Amplify plugin AmplifyAnalyticsPinpoint was not added successfully.');
    }
  });
}

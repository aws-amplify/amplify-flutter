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

import 'package:amplify_analytics_pinpoint/method_channel_amplify.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Amplify = MethodChannelAmplify();
  const MethodChannel channel = MethodChannel('com.amazonaws.amplify/amplify');
  const MethodChannel analyticsChannel =
      MethodChannel('com.amazonaws.amplify/analytics_pinpoint');

  bool platformError = false;

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'addPlugin') {
        if (!platformError) {
          return true;
        } else {
          throw PlatformException(code: 'AmplifyAlreadyConfiguredException');
        }
      } else {
        return true;
      }
    });

    // Clear out plugins before each test for a fresh state.
    Amplify.Analytics.plugins.clear();
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
    analyticsChannel.setMockMethodCallHandler(null);
  });

  test(
      'Exception is not thrown if platform exception contains "AmplifyAlreadyConfiguredException" code',
      () async {
    platformError = true;
    try {
      await Amplify.addPlugin(AmplifyAnalyticsPinpointMethodChannel());
    } on Exception {
      fail('exception was thrown');
    }
  });

  test(
      'Plugin is added if platform exception contains "AmplifyAlreadyConfiguredException" code',
      () async {
    platformError = true;
    await Amplify.addPlugin(AmplifyAnalyticsPinpointMethodChannel());
    expect(Amplify.Analytics.plugins.length, 1);
  });

  test('AmplifyException is thrown if addPlugin called twice', () async {
    try {
      await Amplify.addPlugin(AmplifyAnalyticsPinpointMethodChannel());
      await Amplify.addPlugin(AmplifyAnalyticsPinpointMethodChannel());
      fail('exception not thrown');
    } on AmplifyException catch (e) {
      expect(e.message,
          'Amplify plugin AmplifyAnalyticsPinpointMethodChannel was not added successfully.');
    } on Exception catch (e) {
      expect(e, isA<AmplifyException>());
    }
  });
}

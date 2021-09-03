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

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_flutter/categories/amplify_categories.dart';
import 'package:amplify_flutter/config/amplify_config.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';
import '../test_resources/amplifyconfiguration_all_resources.dart';
import '../test_resources/test_values.dart';

void main() {
  const channel = MethodChannel('com.amazonaws.amplify/amplify');
  const analyticsChannel =
      MethodChannel('com.amazonaws.amplify/analytics_pinpoint');

  TestWidgetsFlutterBinding.ensureInitialized();

  // Class under test
  late AmplifyClass amplify;

  // Amplify config file
  var amplifyConfig = allResourcesConfig;

  setUp(() async {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    // We want to instantiate a new instance for each test so we start
    // with a fresh state as `Amplify` singleton holds a state.
    amplify = AmplifyClass.protected();
    await Amplify.addPlugin(AmplifyAnalyticsPinpoint());
  });

  tearDown(() {
    AnalyticsCategory.plugins.clear();
  });

  test('PinpointAnalytics is instantiated', () async {
    await amplify.configure(amplifyConfig);
    var config = await amplify.asyncConfig;
    expect(
        config.analytics?.awsPinpointAnalyticsPlugin?.pinpointAnalytics!.appId,
        ANALYTICS_APP_ID);
    expect(
        config.analytics?.awsPinpointAnalyticsPlugin?.pinpointAnalytics!.region,
        REGION);
  });

  test('PinpointTargeting is instantiated', () async {
    await amplify.configure(amplifyConfig);
    var config = await amplify.asyncConfig;
    expect(
        config.analytics!.awsPinpointAnalyticsPlugin!.pinpointTargeting!.region,
        REGION);
  });
}

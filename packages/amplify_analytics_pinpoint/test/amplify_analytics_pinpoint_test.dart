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
import 'package:amplify_analytics_plugin_interface/amplify_analytics_plugin_interface.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';

void main() {
  const MethodChannel analyticsChannel =
      MethodChannel('com.amazonaws.amplify/analytics_pinpoint');

  AmplifyAnalyticsPinpoint analytics = new AmplifyAnalyticsPinpoint();

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    analyticsChannel.setMockMethodCallHandler(null);
  });

  // test sending basic events
  test('recordEvent results in true', () async {
    var event = AnalyticsEvent("test");

    analytics.recordEvent(event: event);
  });

  test('recordEvent results in true', () async {
    var event = AnalyticsEvent("test");

    event.properties.addBoolProperty("boolKey", true);
    event.properties.addDoubleProperty("doubleKey", 10.0);
    event.properties.addIntProperty("intKey", 10);
    event.properties.addStringProperty("stringKey", "stringValue");

    analytics.recordEvent(event: event);
  });

  test('registerGlobalProperties results in true', () async {
    var globalProperties = AnalyticsProperties();

    await analytics.registerGlobalProperties(
        globalProperties: globalProperties);
  });

  test('registerGlobalProperties results in true', () async {
    var globalProperties = AnalyticsProperties();

    globalProperties.addBoolProperty("boolKey", true);
    globalProperties.addDoubleProperty("doubleKey", 10.0);
    globalProperties.addIntProperty("intKey", 10);
    globalProperties.addStringProperty("stringKey", "stringValue");

    await analytics.registerGlobalProperties(
        globalProperties: globalProperties);
  });

  test('identify user results in true', () async {
    var userProfile = AnalyticsUserProfile();
    await analytics.identifyUser(userId: "testUser", userProfile: userProfile);
  });

  test('identify user results in true', () async {
    var userProfile = AnalyticsUserProfile();
    userProfile.name = "name";
    userProfile.email = "email";
    userProfile.plan = "plan";

    var analyticsUserLocation = new AnalyticsUserProfileLocation();
    userProfile.location = analyticsUserLocation;

    var analyticsProperties = new AnalyticsProperties();
    userProfile.properties = analyticsProperties;

    analytics.identifyUser(userId: "testUser", userProfile: userProfile);
  });

  test('identify user results in true', () async {
    var userProfile = AnalyticsUserProfile();
    userProfile.name = "name";
    userProfile.email = "email";
    userProfile.plan = "plan";

    var analyticsUserLocation = new AnalyticsUserProfileLocation();
    analyticsUserLocation.latitude = 5;
    analyticsUserLocation.longitude = 5;
    analyticsUserLocation.postalCode = "94070";
    analyticsUserLocation.city = "SanFrancisco";
    analyticsUserLocation.region = "California";
    analyticsUserLocation.country = "USA";
    userProfile.location = analyticsUserLocation;

    var analyticsProperties = new AnalyticsProperties();
    analyticsProperties.addBoolProperty("boolKey", true);
    analyticsProperties.addDoubleProperty("doubleKey", 10.0);
    analyticsProperties.addIntProperty("intKey", 10);
    analyticsProperties.addStringProperty("stringKey", "stringValue");
    userProfile.properties = analyticsProperties;

    await analytics.identifyUser(userId: "testUser", userProfile: userProfile);
  });
}

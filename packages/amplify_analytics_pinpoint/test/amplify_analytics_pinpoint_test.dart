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

  final eventName = 'test';
  final userId = 'testUser';
  final name = 'Darth Vader';
  final email = 'vader@sith.com';
  final plan = 'plan';
  final doubleNum = 10.0;
  final intNum = 10;
  final stringValue = 'stringValue';
  final propertiesMap = {
    'boolKey': true,
    'doubleKey': doubleNum,
    'intKey': intNum,
    'stringKey': stringValue
  };
  final propertiesTypesMap = {
    'boolKey': 'BOOL',
    'doubleKey': 'DOUBLE',
    'intKey': 'INT',
    'stringKey': 'STRING'
  };

  tearDown(() {
    analyticsChannel.setMockMethodCallHandler(null);
  });

  // test sending basic events
  test('recordEvent correctly serializes input to method channel', () async {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.arguments,
          {'name': eventName, 'propertiesMap': {}, 'propertiesTypesMap': {}});
    });

    var event = AnalyticsEvent(eventName);
    expect(analytics.recordEvent(event: event), completes);
  });

  test('flushEvents executes successfully', () async {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {});
    expect(analytics.flushEvents(), completes);
  });

  test('enable executes successfully', () async {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {});
    expect(analytics.enable(), completes);
  });

  test('disable executes successfully', () async {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {});
    expect(analytics.disable(), completes);
  });

  test(
      'unregisterGlobalProperties correctly serializes input to method channel',
      () async {
    final propertiesToUnregister = ['name'];
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.arguments, propertiesToUnregister);
    });
    expect(
        analytics.unregisterGlobalProperties(
            propertyNames: propertiesToUnregister),
        completes);
  });

  test(
      'recordEvent adds properties to event and correctly serializes input to method channel',
      () async {
    var event = AnalyticsEvent(eventName);
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.arguments, {
        'name': eventName,
        'propertiesMap': propertiesMap,
        'propertiesTypesMap': propertiesTypesMap
      });
    });

    event.properties.addBoolProperty('boolKey', true);
    event.properties.addDoubleProperty('doubleKey', doubleNum);
    event.properties.addIntProperty('intKey', intNum);
    event.properties.addStringProperty('stringKey', stringValue);

    expect(analytics.recordEvent(event: event), completes);
  });

  test(
      'registerGlobalProperties correctly serializes basic input to method channel',
      () async {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.arguments,
          {'propertiesMap': {}, 'propertiesTypesMap': {}});
    });

    var globalProperties = AnalyticsProperties();
    expect(
        analytics.registerGlobalProperties(globalProperties: globalProperties),
        completes);
  });

  test(
      'registerGlobalProperties adds properties and correctly serializes input to method channel',
      () async {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.arguments, {
        'propertiesMap': propertiesMap,
        'propertiesTypesMap': propertiesTypesMap
      });
    });

    var globalProperties = AnalyticsProperties();

    globalProperties.addBoolProperty('boolKey', true);
    globalProperties.addDoubleProperty('doubleKey', doubleNum);
    globalProperties.addIntProperty('intKey', intNum);
    globalProperties.addStringProperty('stringKey', stringValue);

    expect(
        analytics.registerGlobalProperties(globalProperties: globalProperties),
        completes);
  });

  test('identify user correctly serializes minimal input to method channel',
      () async {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.arguments, {'userId': userId, 'userProfileMap': {}});
    });

    var userProfile = AnalyticsUserProfile();
    expect(analytics.identifyUser(userId: userId, userProfile: userProfile),
        completes);
  });

  test('identify user correctly serializes basic input to method channel',
      () async {
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.arguments, {
        'userId': userId,
        'userProfileMap': {
          'name': name,
          'email': email,
          'plan': plan,
          'location': {},
          'propertiesMap': {},
          'propertiesTypesMap': {}
        }
      });
    });

    var userProfile = AnalyticsUserProfile();
    userProfile.name = name;
    userProfile.email = email;
    userProfile.plan = plan;

    var analyticsUserLocation = new AnalyticsUserProfileLocation();
    userProfile.location = analyticsUserLocation;

    var analyticsProperties = new AnalyticsProperties();
    userProfile.properties = analyticsProperties;

    expect(analytics.identifyUser(userId: userId, userProfile: userProfile),
        completes);
  });

  test('identify user correctly serializes additional input to method channel',
      () async {
    final city = 'San Francisco';
    final region = 'California';
    final country = 'USA';
    final latitude = 5.0;
    final longitude = 5.0;
    final postalCode = '94070';

    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.arguments, {
        'userId': userId,
        'userProfileMap': {
          'name': name,
          'email': email,
          'plan': plan,
          'location': {
            'latitude': latitude,
            'longitude': longitude,
            'postalCode': postalCode,
            'city': city,
            'region': region,
            'country': country
          },
          'propertiesMap': propertiesMap,
          'propertiesTypesMap': propertiesTypesMap
        }
      });
    });

    var userProfile = AnalyticsUserProfile();
    userProfile.name = name;
    userProfile.email = email;
    userProfile.plan = plan;

    var analyticsUserLocation = new AnalyticsUserProfileLocation();
    analyticsUserLocation.latitude = latitude;
    analyticsUserLocation.longitude = longitude;
    analyticsUserLocation.postalCode = postalCode;
    analyticsUserLocation.city = city;
    analyticsUserLocation.region = region;
    analyticsUserLocation.country = country;
    userProfile.location = analyticsUserLocation;

    var analyticsProperties = new AnalyticsProperties();
    analyticsProperties.addBoolProperty('boolKey', true);
    analyticsProperties.addDoubleProperty('doubleKey', doubleNum);
    analyticsProperties.addIntProperty('intKey', intNum);
    analyticsProperties.addStringProperty('stringKey', stringValue);
    userProfile.properties = analyticsProperties;

    expect(analytics.identifyUser(userId: userId, userProfile: userProfile),
        completes);
  });
}

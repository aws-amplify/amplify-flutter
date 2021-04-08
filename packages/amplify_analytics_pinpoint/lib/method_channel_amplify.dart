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

import 'package:amplify_analytics_plugin_interface/amplify_analytics_plugin_interface.dart';
import 'package:amplify_core/types/exception/AmplifyException.dart';
import 'package:amplify_core/types/exception/AmplifyExceptionMessages.dart';
import 'package:amplify_core/types/exception/AmplifyAlreadyConfiguredException.dart';
import 'package:flutter/services.dart';

import 'amplify_analytics_pinpoint.dart';

const MethodChannel _channel =
    MethodChannel('com.amazonaws.amplify/analytics_pinpoint');

class AmplifyAnalyticsPinpointMethodChannel extends AmplifyAnalyticsPinpoint {
  @override
  Future<void> addPlugin() async {
    try {
      return await _channel.invokeMethod('addPlugin');
    } on PlatformException catch (e) { // Swallow PluginAddedHotRestartException to handle hot restart
      if (e.code == 'AlreadyConfiguredException') {
        throw AmplifyAlreadyConfiguredException('Amplify has already been configured and adding plugins after configure is not supported.',
            recoverySuggestion:
            'Check if Amplify is already configured using Amplify.isConfigured.');
      } else {
        throw AmplifyException("Analytics plugin has already been added, " +
            "multiple plugins for Analytics category are currently not supported.");
      }
    }
  }

  @override
  Future<void> recordEvent({AnalyticsEvent event}) async {
    var name = event.name;
    var eventProperties = event.properties;

    await _channel.invokeMethod<bool>(
      'recordEvent',
      <String, Object>{
        'name': name,
        'propertiesMap': eventProperties.getAllProperties(),
        'propertiesTypesMap': eventProperties.getAllPropertiesTypes()
      },
    );
  }

  @override
  Future<void> flushEvents() async {
    await _channel.invokeMethod<bool>('flushEvents');
  }

  @override
  Future<void> registerGlobalProperties(
      {AnalyticsProperties globalProperties}) async {
    await _channel.invokeMethod<bool>(
      'registerGlobalProperties',
      <String, Object>{
        'propertiesMap': globalProperties.getAllProperties(),
        'propertiesTypesMap': globalProperties.getAllPropertiesTypes()
      },
    );
  }

  @override
  Future<void> unregisterGlobalProperties({List<String> propertyNames}) async {
    await _channel.invokeMethod<bool>(
        'unregisterGlobalProperties', propertyNames);
  }

  @override
  Future<void> enable() async {
    await _channel.invokeMethod<bool>(
      'enable',
    );
  }

  @override
  Future<void> disable() async {
    await _channel.invokeMethod<bool>(
      'disable',
    );
  }

  @override
  Future<void> identifyUser(
      {String userId, AnalyticsUserProfile userProfile}) async {
    await _channel.invokeMethod<bool>(
      'identifyUser',
      <String, Object>{
        'userId': userId,
        'userProfileMap': userProfile.getAllProperties()
      },
    );
  }
}

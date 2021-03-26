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

library amplify_analytics_pinpoint;

import 'package:amplify_analytics_plugin_interface/amplify_analytics_plugin_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import './method_channel_amplify.dart';

export 'package:amplify_analytics_plugin_interface/src/types.dart';

class AmplifyAnalyticsPinpoint extends AnalyticsPluginInterface {
  static final Object _token = Object();

  AmplifyAnalyticsPinpoint() : super(token: _token);

  static AmplifyAnalyticsPinpoint _instance =
      AmplifyAnalyticsPinpointMethodChannel();

  static AnalyticsPluginInterface get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [AnalyticsPluginInterface] when they register themselves.
  static set instance(AnalyticsPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  // Public facing methods

  Future<void> addPlugin() async {
    return _instance.addPlugin();
  }

  Future<void> recordEvent({@required AnalyticsEvent event}) async {
    return _instance.recordEvent(event: event);
  }

  Future<void> flushEvents() async {
    await _instance.flushEvents();
  }

  Future<void> registerGlobalProperties(
      {@required AnalyticsProperties globalProperties}) async {
    return _instance.registerGlobalProperties(
        globalProperties: globalProperties);
  }

  Future<void> unregisterGlobalProperties(
      {@required List<String> propertyNames}) async {
    return _instance.unregisterGlobalProperties(propertyNames: propertyNames);
  }

  Future<void> enable() async {
    await _instance.enable();
  }

  Future<void> disable() async {
    return _instance.disable();
  }

  Future<void> identifyUser(
      {@required String userId,
      @required AnalyticsUserProfile userProfile}) async {
    return _instance.identifyUser(userId: userId, userProfile: userProfile);
  }
}

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

import 'package:amplify_core/amplify_core.dart';
import 'method_channel_amplify.dart';

class AmplifyAnalyticsPinpoint extends AnalyticsPluginInterface {
  /// Constructs a AmplifyAnalyticsPinpoint plugin
  AmplifyAnalyticsPinpoint();

  static final AmplifyAnalyticsPinpoint _instance =
      AmplifyAnalyticsPinpointMethodChannel();

  // Public facing methods

  @override
  Future<void> addPlugin() async {
    return _instance.addPlugin();
  }

  @override
  Future<void> recordEvent({required AnalyticsEvent event}) async {
    return _instance.recordEvent(event: event);
  }

  @override
  Future<void> flushEvents() async {
    await _instance.flushEvents();
  }

  @override
  Future<void> registerGlobalProperties(
      {required AnalyticsProperties globalProperties}) async {
    return _instance.registerGlobalProperties(
        globalProperties: globalProperties);
  }

  @override
  Future<void> unregisterGlobalProperties(
      {required List<String> propertyNames}) async {
    return _instance.unregisterGlobalProperties(propertyNames: propertyNames);
  }

  @override
  Future<void> enable() async {
    await _instance.enable();
  }

  @override
  Future<void> disable() async {
    return _instance.disable();
  }

  @override
  Future<void> identifyUser(
      {required String userId,
      required AnalyticsUserProfile userProfile}) async {
    return _instance.identifyUser(userId: userId, userProfile: userProfile);
  }

  @override
  Future<void> onConfigure() {
    return _instance.onConfigure();
  }
}

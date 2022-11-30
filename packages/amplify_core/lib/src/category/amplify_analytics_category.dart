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

part of amplify_interface;

class AnalyticsCategory extends AmplifyCategory<AnalyticsPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.analytics;

  /// {@template amplify_core.amplify_analytics_category.record_event}
  /// Save an [event] to be sent in the next batch to the analytics service
  /// {@endtemplate}
  Future<void> recordEvent({required AnalyticsEvent event}) async {
    return plugins.length == 1
        ? plugins[0].recordEvent(event: event)
        : throw _pluginNotAddedException('Analytics');
  }

  /// {@template amplify_core.amplify_analytics_category.flush_events}
  /// Immediately send all saved events to the analytics service
  /// {@endtemplate}
  Future<void> flushEvents() async {
    return plugins.length == 1
        ? plugins[0].flushEvents()
        : throw _pluginNotAddedException('Analytics');
  }

  /// {@template amplify_core.amplify_analytics_category.register_global_properties}
  /// Register fields of [globalProperties] to be sent with all future events.
  /// {@endtemplate}
  Future<void> registerGlobalProperties(
      {required AnalyticsProperties globalProperties}) async {
    return plugins.length == 1
        ? plugins[0]
            .registerGlobalProperties(globalProperties: globalProperties)
        : throw _pluginNotAddedException('Analytics');
  }

  /// {@template amplify_core.amplify_analytics_category.unregister_global_properties}
  /// Remove fields by their [propertyNames] to stop being sent with all future events
  /// {@endtemplate}
  Future<void> unregisterGlobalProperties(
      {List<String> propertyNames = const <String>[]}) async {
    return plugins.length == 1
        ? plugins[0].unregisterGlobalProperties(propertyNames: propertyNames)
        : throw _pluginNotAddedException('Analytics');
  }

  /// {@template amplify_core.amplify_analytics_category.enable}
  /// Start all automatic event tracking of this plugin
  /// {@endtemplate}
  Future<void> enable() async {
    return plugins.length == 1
        ? plugins[0].enable()
        : throw _pluginNotAddedException('Analytics');
  }

  /// {@template amplify_core.amplify_analytics_category.disable}
  /// Stop all automatic event tracking of this plugin
  /// {@endtemplate}
  Future<void> disable() async {
    return plugins.length == 1
        ? plugins[0].disable()
        : throw _pluginNotAddedException('Analytics');
  }

  /// {@template amplify_core.amplify_analytics_category.identify_user}
  /// Store a [userId] with [userProfile] to be associated with current device
  /// {@endtemplate}
  Future<void> identifyUser(
      {required String userId,
      required AnalyticsUserProfile userProfile}) async {
    return plugins.length == 1
        ? plugins[0].identifyUser(userId: userId, userProfile: userProfile)
        : throw _pluginNotAddedException('Analytics');
  }
}

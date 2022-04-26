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

  Future<void> addPlugin(AnalyticsPluginInterface plugin) async {
    //TODO: Allow for multiple plugins to work simultaneously
    if (plugins.isEmpty) {
      try {
        await plugin.addPlugin();
        plugins.add(plugin);
      } on AmplifyAlreadyConfiguredException {
        plugins.add(plugin);
      } on PlatformException catch (e) {
        throw AmplifyException.fromMap(Map<String, String>.from(e.details));
      }
    } else {
      throw const AmplifyException(
        'Analytics plugin has already been added, '
        'multiple plugins for Analytics category are currently not supported.',
      );
    }
  }

  Future<void> recordEvent({required AnalyticsEvent event}) async {
    return plugins.length == 1
        ? plugins[0].recordEvent(event: event)
        : throw _pluginNotAddedException('Analytics');
  }

  Future<void> flushEvents() async {
    return plugins.length == 1
        ? plugins[0].flushEvents()
        : throw _pluginNotAddedException('Analytics');
  }

  Future<void> registerGlobalProperties(
      {required AnalyticsProperties globalProperties}) async {
    return plugins.length == 1
        ? plugins[0]
            .registerGlobalProperties(globalProperties: globalProperties)
        : throw _pluginNotAddedException('Analytics');
  }

  Future<void> unregisterGlobalProperties(
      {List<String> propertyNames = const <String>[]}) async {
    return plugins.length == 1
        ? plugins[0].unregisterGlobalProperties(propertyNames: propertyNames)
        : throw _pluginNotAddedException('Analytics');
  }

  Future<void> enable() async {
    return plugins.length == 1
        ? plugins[0].enable()
        : throw _pluginNotAddedException('Analytics');
  }

  Future<void> disable() async {
    return plugins.length == 1
        ? plugins[0].disable()
        : throw _pluginNotAddedException('Analytics');
  }

  Future<void> identifyUser(
      {required String userId,
      required AnalyticsUserProfile userProfile}) async {
    return plugins.length == 1
        ? plugins[0].identifyUser(userId: userId, userProfile: userProfile)
        : throw _pluginNotAddedException('Analytics');
  }
}

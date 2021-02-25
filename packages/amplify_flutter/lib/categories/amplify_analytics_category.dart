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

class AnalyticsCategory {
  const AnalyticsCategory();

  static List<AnalyticsPluginInterface> plugins = [];

  Future<void> addPlugin(AnalyticsPluginInterface plugin) async {
    //TODO: Allow for multiple plugins to work simultaneously
    if (plugins.length == 0) {
      plugins.add(plugin);
      await plugin.addPlugin();
    } else {
      throw AmplifyException("Analytics plugin has already been added, " +
          "multiple plugins for Analytics category are currently not supported.");
    }
  }

  Future<void> recordEvent({AnalyticsEvent event}) async {
    return Future.wait(
        plugins.map((plugin) => plugin.recordEvent(event: event)));
  }

  Future<void> flushEvents() async {
    return Future.wait(plugins.map((plugin) => plugin.flushEvents()));
  }

  Future<void> registerGlobalProperties(
      {AnalyticsProperties globalProperties}) async {
    return Future.wait(plugins.map((plugin) =>
        plugin.registerGlobalProperties(globalProperties: globalProperties)));
  }

  Future<void> unregisterGlobalProperties({List<String> propertyNames}) async {
    if (propertyNames == null) {
      propertyNames = List<String>();
    }

    return Future.wait(plugins.map((plugin) =>
        plugin.unregisterGlobalProperties(propertyNames: propertyNames)));
  }

  Future<void> enable() async {
    return Future.wait(plugins.map((plugin) => plugin.enable()));
  }

  Future<void> disable() async {
    return Future.wait(plugins.map((plugin) => plugin.disable()));
  }

  Future<void> identifyUser(
      {String userId, AnalyticsUserProfile userProfile}) async {
    return Future.wait(plugins.map((plugin) =>
        plugin.identifyUser(userId: userId, userProfile: userProfile)));
  }
}

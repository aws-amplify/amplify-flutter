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

library amplify_core;

import 'dart:async';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class Amplify {
  static const AuthCategory Auth = const AuthCategory();
  static const AnalyticsCategory Analytics = const AnalyticsCategory();
  static const StorageCategory Storage = const StorageCategory();
  static const DataStoreCategory DataStore = const DataStoreCategory();

  bool _isConfigured = false;
  var multiPluginWarning =
      "Concurrent usage of multiple plugins per category is not yet available";

  Future<void> addPlugin(
      {List<AuthPluginInterface> authPlugins,
      List<AnalyticsPluginInterface> analyticsPlugins,
      List<StoragePluginInterface> storagePlugins,
      List<DataStorePluginInterface> dataStorePlugins}) async {
    if (!_isConfigured) {
      try {
        if (authPlugins != null && authPlugins.length == 1) {
          Auth.addPlugin(authPlugins[0]);
        } else if (authPlugins != null && authPlugins.length > 1) {
          throw (multiPluginWarning);
        }
        if (analyticsPlugins != null && analyticsPlugins.length == 1) {
          Analytics.addPlugin(analyticsPlugins[0]);
        } else if (analyticsPlugins != null && analyticsPlugins.length > 1) {
          throw (multiPluginWarning);
        }
        if (storagePlugins != null && storagePlugins.length == 1) {
          Storage.addPlugin(storagePlugins[0]);
        } else if (storagePlugins != null && storagePlugins.length > 1) {
          throw (multiPluginWarning);
        }
        if (dataStorePlugins != null && dataStorePlugins.length == 1) {
          await DataStore.addPlugin(dataStorePlugins[0]);
        } else if (dataStorePlugins != null && dataStorePlugins.length > 1) {
          throw (multiPluginWarning);
        }
      } catch (e) {
        print(e);
        throw ("Amplify plugin was not added");
      }
    } else {
      throw ("Amplify is already configured; additional plugins cannot be added.");
    }
    return null;
  }

  String _getVersion() {
    return "0.1.0";
  }

  Future<void> configure(String configuration) async {
    assert(configuration != null, 'configuration is null');
    var res = await Core.instance.configure(_getVersion(), configuration);
    _isConfigured = res;
    if (!res) {
      throw ("Amplify plugin was not added");
    }

    await DataStore.configure(configuration);
  }
}

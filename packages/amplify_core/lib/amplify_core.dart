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
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';

class Amplify {
  static const AuthCategory Auth = const AuthCategory();
  static const AnalyticsCategory Analytics = const AnalyticsCategory();
  
  bool _isConfigured = false;
  var multiPluginWarning = "Concurrent usage of multiple plugins per category is not yet available";

  Future<void> addPlugin({
    List<AuthPluginInterface> authPlugin, 
    List<AnalyticsPluginInterface> analyticsPlugin}) {
    if (!_isConfigured) {
      try {
        if (authPlugin != null && authPlugin.length == 1) {
          Auth.addPlugin(authPlugin[0]);
        } else if (authPlugin.length > 1) {
          throw(multiPluginWarning);
        }
        if (analyticsPlugin != null && analyticsPlugin.length == 1) {
          Analytics.addPlugin(analyticsPlugin[0]);
        } else if (authPlugin.length > 1) {
          throw(multiPluginWarning);
        }
      } catch(e) {
        print(e);
        throw("Amplify plugin was not added");
      }      
    } else {
      throw("Amplify is already configured; additional plugins cannot be added.");
    }
  return null;
  }

  Future<void> configure(String configuration) async {
    assert(configuration != null, 'configuration is null');
    var res = await Core.instance.configure(configuration);
    _isConfigured = res;
    if (!res) {
      throw("Amplify plugin was not added");
    }
  }
}

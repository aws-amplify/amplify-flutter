library amplify_core;


import 'dart:async';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';

class Amplify {
  static const AuthCategory Auth = const AuthCategory();
  static const AnalyticsCategory Analytics = const AnalyticsCategory();

  bool _isConfigured = false;

  Future<void> addPlugin(
    List<AuthPluginInterface> authPlugin,
    List<AnalyticsPluginInterface> analyticsPlugin
  ) {
    if (!_isConfigured) {
      try {
        if (authPlugin != null && authPlugin.length > 0) {
          authPlugin.forEach((el) {
            Auth.addPlugin(el);
          });
        }
        if (analyticsPlugin != null && analyticsPlugin.length > 0) {
          analyticsPlugin.forEach((el) {
            Analytics.addPlugin(el);
          });
        }
      } catch(e) {
        print(e);
        throw("Amplify plugin was not added");
      }      
    } else {
      throw("Amplify is already configured; additional plugins cannot be added.");
    }

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

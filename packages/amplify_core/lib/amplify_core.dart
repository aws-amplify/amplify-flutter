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
    List<AuthPluginInterface> authPlugins, 
    List<AnalyticsPluginInterface> analyticsPlugins}) {
    if (!_isConfigured) {
      try {
        if (authPlugins != null && authPlugins.length == 1) {
          Auth.addPlugin(authPlugins[0]);
        } else if (authPlugins != null && authPlugins.length > 1) {
          throw(multiPluginWarning);
        }
        if (analyticsPlugins != null && analyticsPlugins.length == 1) {
          Analytics.addPlugin(analyticsPlugins[0]);
        } else if (analyticsPlugins != null && analyticsPlugins.length > 1) {
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

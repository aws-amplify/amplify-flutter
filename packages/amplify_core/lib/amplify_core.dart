import 'dart:async';

import 'package:flutter/services.dart';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';

import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';

class Amplify {

  static const AnalyticsCategory Analytics = const AnalyticsCategory();
  bool addPlugin(AnalyticsPluginInterface analyticsPlugin){
    return Analytics.addPlugin(analyticsPlugin);
  }

  Future<bool> configure(String configuration) async {
    assert(configuration != null, 'configuration is null');
    var res = await Core.instance.configure(configuration);
    return res;
  }
}

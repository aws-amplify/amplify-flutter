library amplify_core;


import 'dart:async';
import 'dart:collection';
import 'package:flutter/services.dart';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class Amplify {
  static const AuthCategory Auth = const AuthCategory();

  bool addPlugin(
    List<AuthPluginInterface> authPlugin
  ) {
    try {
      if (authPlugin != null && authPlugin.length > 0) {
        authPlugin.forEach((el) {
          Auth.addPlugin(el);
        });
      }
      return true;
    } catch(e) {
      print(e);
      return false;
    }
  }

  Future<bool> configure(String configuration) async {
    assert(configuration != null, 'configuration is null');
    var res = await Core.instance.configure(configuration);
    return res;
  }
}

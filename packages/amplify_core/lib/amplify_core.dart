library amplify_core;


import 'dart:async';
import 'dart:collection';
import 'package:flutter/services.dart';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class Amplify {
  static const AuthCategory Auth = const AuthCategory();
  bool _isConfigured = false;

  Future<void> addPlugin(
    List<AuthPluginInterface> authPlugin
  ) {
    if (!_isConfigured) {
      try {
        if (authPlugin != null && authPlugin.length > 0) {
          authPlugin.forEach((el) {
            Auth.addPlugin(el);
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

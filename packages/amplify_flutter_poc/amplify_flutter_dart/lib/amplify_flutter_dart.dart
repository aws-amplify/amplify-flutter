import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter_platform_interface/amplify_flutter_platform_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

mixin AmplifyFlutterDart on AmplifyClass {
  Set<AmplifyPluginInterfacePOC> plugins = {};

  @override
  StorageCategory? get Storage => throw UnimplementedError(
      'Storage Category is only available on iOS and Android platforms');

  @override
  APICategory? get API => throw UnimplementedError(
      'API Category is only available on iOS and Android platforms');

  @override
  DataStoreCategory? get Datastore => throw UnimplementedError(
      'DataStore Category is only available on iOS and Android platforms');

  @override
  Future<void> addPlugin(AmplifyPluginInterfacePOC plugin) async {
    plugins.add(plugin);
  }

  @override
  Future<void> addPlugins(List<AmplifyPluginInterfacePOC> plugins) async {
    plugins.addAll(plugins);
  }

  @override
  Future<void> configurePlatforms(String version, String configuration) async {
    /// Configure Hub
    /// Configure Logging
    /// Configure all other categories starting with Auth

    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('configuration', configuration);
  }
}

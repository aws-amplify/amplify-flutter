import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AmplifyFlutterDart {
  Set<AmplifyCategoryInterface> plugins = {};

  // @override
  // StorageCategory? get Storage => throw UnimplementedError(
  //     'Storage Category is only available on iOS and Android platforms');

  // @override
  // APICategory? get API => throw UnimplementedError(
  //     'API Category is only available on iOS and Android platforms');

  // @override
  // DataStoreCategory? get Datastore => throw UnimplementedError(
  //     'DataStore Category is only available on iOS and Android platforms');

  Future<void> addPlugin(AmplifyCategoryInterface plugin) async {
    plugins.add(plugin);
  }

  Future<void> addPlugins(List<AmplifyCategoryInterface> plugins) async {
    plugins.addAll(plugins);
  }

  Future<void> configurePlatforms(String version, String configuration) async {
    /// Configure Hub
    /// Configure Logging
    /// Configure all other categories starting with Auth

    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('configuration', configuration);
  }
}

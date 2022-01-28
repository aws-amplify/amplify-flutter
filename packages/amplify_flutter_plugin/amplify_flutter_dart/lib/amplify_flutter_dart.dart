import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

abstract class AmplifyFlutterDart {
  Future<void> configurePlatforms(String version, String configuration) async {
    print('Dart configure platforms');

    /// Configure Hub
    /// Configure Logging
    /// Configure all other categories starting with Auth

    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('configuration', configuration);
  }
}

import 'package:shared_preferences/shared_preferences.dart';

mixin AmplifyFlutterDartMixin {
  Future<void> configurePlatforms(String version, String configuration) async {
    print('Dart configure platforms');

    /// Configure Hub
    /// Configure Logging
    /// Configure all other categories starting with Auth

    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('configuration', configuration);
  }
}

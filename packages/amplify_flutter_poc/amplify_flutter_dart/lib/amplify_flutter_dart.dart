import 'dart:async';

import 'package:amplify_flutter_platform_interface/amplify_flutter_platform_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A web implementation of the AmplifyFlutterPocWeb plugin.
mixin AmplifyFlutterDart {
  @override
  Future<void> configure(String configuration) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('configuration', configuration);
  }
}

import 'package:amplify_flutter/src/amplify_impl.dart';
import 'package:amplify_flutter/src/amplify_flutter_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// Top level singleton Amplify object.
class AmplifyRegistrar {
  /// Top level singleton Amplify object.
  static AmplifyClass Amplify = AmplifyClass.protected();

  static void registerWith(Registrar registrar) {
    AmplifyClass.instance = AmplifyFlutterWeb();
  }
}

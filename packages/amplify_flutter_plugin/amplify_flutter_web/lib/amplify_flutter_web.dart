import 'package:amplify_flutter_dart/amplify_flutter_dart.dart';
import 'package:amplify_flutter_platform_interface/amplify_flutter_platform_interface.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the AmplifyFlutterPocWeb plugin.
class AmplifyFlutterWeb extends AmplifyClass with AmplifyFlutterDart {
  AmplifyFlutterWeb.protected() : super.protected();

  /// Registers this class as the default instance of [UrlLauncherPlatform].
  static void registerWith(Registrar registrar) {
    AmplifyClass.instance = AmplifyFlutterWeb.protected();
  }
}

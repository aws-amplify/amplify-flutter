import 'package:amplify_flutter_dart/amplify_flutter_dart_mixin.dart';
import 'package:amplify_flutter_platform_interface/amplify_flutter_platform_interface.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the amplify_flutter plugin.
class AmplifyFlutterWeb extends AmplifyClass with AmplifyFlutterDartMixin {
  AmplifyFlutterWeb.protected() : super.protected();

  /// Registers this class as the web instance of [AmplifyClass].
  static void registerWith(Registrar registrar) {
    AmplifyClass.instance = AmplifyFlutterWeb.protected();
  }
}

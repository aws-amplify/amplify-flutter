import 'package:amplify_flutter_dart/amplify_flutter_dart_mixin.dart';
import 'package:amplify_flutter_platform_interface/amplify_flutter_platform_interface.dart';

/// A macOS implementation of the amplify_flutter plugin.
class AmplifyFlutterMacOS extends AmplifyClass with AmplifyFlutterDartMixin {
  AmplifyFlutterMacOS.protected() : super.protected();

  /// Registers this class as the default instance of [AmplifyClass].
  static void registerWith() {
    AmplifyClass.instance = AmplifyFlutterMacOS.protected();
  }
}

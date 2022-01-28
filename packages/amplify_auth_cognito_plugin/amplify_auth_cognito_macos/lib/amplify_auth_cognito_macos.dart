import 'dart:async';

import 'package:amplify_auth_cognito_platform_interface/amplify_auth_cognito_platform_interface.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_mixin.dart';

/// A macOS implementation of the amplify_auth_cognito plugin.
class AmplifyAuthCognitoMacOS extends AmplifyAuthCognitoInterface
    with AmplifyAuthCognitoDartMixin {
  AmplifyAuthCognitoMacOS();

  /// Registers this class as the default instance of [AmplifyAuthCognitoInterface].
  static void registerWith() {
    AmplifyAuthCognitoInterface.instance = AmplifyAuthCognitoMacOS();
  }
}

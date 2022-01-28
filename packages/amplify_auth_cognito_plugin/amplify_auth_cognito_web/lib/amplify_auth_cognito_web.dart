import 'dart:async';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:amplify_auth_cognito_platform_interface/amplify_auth_cognito_platform_interface.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_mixin.dart';

/// A web implementation of the amplify_auth_cognito plugin.
class AmplifyAuthCognitoWeb extends AmplifyAuthCognitoInterface
    with AmplifyAuthCognitoDartMixin {
  AmplifyAuthCognitoWeb();

  /// Registers this class as the default instance of [AmplifyAuthCognitoInterface].
  static void registerWith(Registrar registrar) {
    AmplifyAuthCognitoInterface.instance = AmplifyAuthCognitoWeb();
  }
}

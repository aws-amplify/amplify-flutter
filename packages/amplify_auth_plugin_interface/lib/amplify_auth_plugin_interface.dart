library amplify_auth_plugin_interface;

import 'dart:async';
import 'dart:convert';
import 'dart:collection';
import 'package:meta/meta.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'src/types.dart';
export 'src/types.dart';


abstract class AuthPluginInterface extends PlatformInterface {
  /// Constructs a AmplifyPlatform.
  AuthPluginInterface({@required Object token}) : super(token: token);

  /// Adds the configuration and return true if it was successful.
  bool addPlugin(AuthPluginInterface configuration) {
    throw UnimplementedError('configure() has not been implemented.');
  }

  Future<SignUpResult> signUp({@required SignUpRequest request}) {
    throw UnimplementedError('signUp() has not been implemented.');
  }
}

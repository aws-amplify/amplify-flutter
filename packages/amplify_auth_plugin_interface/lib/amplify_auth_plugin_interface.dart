library amplify_auth_plugin_interface;

import 'dart:async';
import 'dart:convert';
import 'dart:collection';
import 'package:meta/meta.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import './src/SignUp/SignUpRequest.dart';
import './src/SignUp/SignUpResult.dart';
export 'src/SignUp/SignUpRequest.dart';
export 'src/SignUp/SignUpResult.dart';

abstract class AuthPluginInterface extends PlatformInterface {
  /// Constructs a AmplifyPlatform.
  AuthPluginInterface({@required Object token}) : super(token: token);

  /// Adds the configuration and return true if it was successful.
  Future<bool> configure(String configuration) {
    throw UnimplementedError('configure() has not been implemented.');
  }

  Future<SignUpResult> signUp({@required SignUpRequest request, Function(SignUpResult) success, Function(SignUpResult) error}) {
    throw UnimplementedError('signUp() has not been implemented.');
  }
}

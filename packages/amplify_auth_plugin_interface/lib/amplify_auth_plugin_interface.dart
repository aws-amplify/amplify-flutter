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
  Future<bool> configure(String configuration) {
    throw UnimplementedError('configure() has not been implemented.');
  }

  Future<SignUpResult> signUp({@required SignUpRequest request, AuthRequestProvider provider, Function(SignUpResult) success, Function(SignUpResult) error}) {
    throw UnimplementedError('signUp() has not been implemented.');
  }

  Future<SignUpResult> confirmSignUp({@required ConfirmSignUpRequest request, Function(SignUpResult) success, Function(SignUpResult) error}) {
    throw UnimplementedError('confirmSignUp() has not been implemented.');
  }

  Future<SignInResult> signIn({@required SignInRequest request, Function(SignInResult) success, Function(SignInResult) error}) {
    throw UnimplementedError('signIn() has not been implemented.');
  }

  Future<SignOutResult> signOut({SignOutRequest request, Function(SignOutResult) success, Function(SignOutResult) error}) {
    throw UnimplementedError('signIn() has not been implemented.');
  }
}

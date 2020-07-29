import 'dart:async';
import 'dart:core';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_auth_cognito.dart';


export './src/types.dart';
export 'package:amplify_auth_plugin_interface/src/types.dart';

class AmplifyAuthCognito extends AuthPluginInterface {

  static final Object _token = Object();

  /// Constructs a AmplifyAuthCognito plugin
  AmplifyAuthCognito() : super(token: _token);

  static AmplifyAuthCognito _instance = AmplifyAuthCognitoMethodChannel();

  static set instance(AuthPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<SignUpResult> signUp({@required SignUpRequest request}) async {
    var res = await _instance.signUp(request: request);
    return res;
  }   

  Future<SignUpResult> confirmSignUp({@required ConfirmSignUpRequest request, Function(SignUpResult) success, Function(SignUpResult) error}) async {
    var res = await _instance.confirmSignUp(request: request, success: success, error: error);
    if (res.error != null && error != null) {
      error(res);
    } else if (success != null) {
      success(res);
    }
    return res;
  }

  Future<SignInResult> signIn({@required SignInRequest request, Function(SignInResult) success, Function(SignInResult) error}) async {
    var res = await _instance.signIn(request: request, success: success, error: error);
    if (res.error != null && error != null) {
      error(res);
    } else if (success != null) {
      success(res);
    }
    return res;
  }

  Future<SignInResult> confirmSignIn({@required ConfirmSignInRequest request, Function(SignInResult) success, Function(SignInResult) error}) async {
    var res = await _instance.confirmSignIn(request: request, success: success, error: error);
    if (res.error != null && error != null) {
      error(res);
    } else if (success != null) {
      success(res);
    }
    return res;
  }

  Future<SignOutResult> signOut({SignOutRequest request, Function(SignOutResult) success, Function(SignOutResult) error}) async {
    var res = await _instance.signOut(request: request, success: success, error: error);
    if (res.error != null && error != null) {
      error(res);
    } else if (success != null) {
      success(res);
    }
    return res;
  }
 
}


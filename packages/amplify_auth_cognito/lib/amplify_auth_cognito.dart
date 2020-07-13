import 'dart:async';
import 'dart:collection';
import 'dart:core';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_auth_cognito.dart';
import './src/CognitoSignUp/CognitoSignUpResult.dart';

export './src/CognitoSignUp/CognitoSignUpRequest.dart';
export './src/CognitoSignUp/CognitoSignUpResultProvider.dart';
export './src/CognitoSignUp/CognitoSignUpResult.dart';

class AmplifyAuthCognito extends AuthPluginInterface {

  static final Object _token = Object();

  /// Constructs a AmplifyAuthCognito plugin
  AmplifyAuthCognito() : super(token: _token);

  static AmplifyAuthCognito _instance = AmplifyAuthCognitoMethodChannel();

  static set instance(AuthPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<SignUpResult> signUp({@required SignUpRequest request, Function(CognitoSignUpResult) success, Function(CognitoSignUpResult) error}) async {
    var res = await _instance.signUp(request: request, success: success, error: error);
    if (res.platformException != null && error != null) {
      error(res);
    } else if (success != null) {
      success(res);
    }
    return res;
  }   
}


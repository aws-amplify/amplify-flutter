import 'dart:async';
import 'dart:collection';
import 'dart:core';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_auth.dart';

export './src/CognitoSignUp/CognitoSignUpRequest.dart';
export './src/CognitoSignUp/CognitoSignUpResponse.dart';
export './src/CognitoSignUp/CognitoSignUpResult.dart';

class AmplifyAuth extends AuthPluginInterface {

  static final Object _token = Object();

  /// Constructs a AmplifyAuth plugin
  AmplifyAuth() : super(token: _token);

  static AmplifyAuth _instance = AmplifyAuthMethodChannel();

  static set instance(AuthPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<SignUpResult> signUp(SignUpRequest request) {
    return _instance.signUp(request);
  }   
}




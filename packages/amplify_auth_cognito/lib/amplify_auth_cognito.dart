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
}


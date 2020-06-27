import 'dart:async';

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_auth.dart';

class AmplifyAuth extends AuthPluginInterface {

  static final Object _token = Object();

  /// Constructs a AmplifyAuth plugin
  AmplifyAuth() : super(token: _token);

  static AmplifyAuth _instance = AmplifyAuthMethodChannel();

  static set instance(AuthPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<SignInResult> put(SignInRequest request)  {
    return _instance.put(request);
  }
}

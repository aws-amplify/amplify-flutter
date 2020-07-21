import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/foundation.dart';

class CognitoSignInRequestProvider extends AuthRequestProvider {
  Map<String, String> metadata;
  CognitoSignInRequestProvider({this.metadata});
}
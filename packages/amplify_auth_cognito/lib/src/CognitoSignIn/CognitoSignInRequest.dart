import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/foundation.dart';

class CognitoSignInRequest extends SignInRequest {
  CognitoSignInRequest({String username, @required String password}) : super(username, password);
}
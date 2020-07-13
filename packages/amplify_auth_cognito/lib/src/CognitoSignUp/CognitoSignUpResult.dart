import 'package:amplify_auth_cognito/src/CognitoSignUp/CognitoSignUpResultProvider.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/services.dart';

class CognitoSignUpResult extends SignUpResult {
  CognitoSignUpResult(CognitoSignUpResultProvider provider, String signUpState, [PlatformException platformException]) : super.init(signUpState, provider.serializeAsMap(), platformException);
}
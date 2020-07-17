import 'package:amplify_auth_cognito/src/CognitoSignUp/CognitoSignUpResultProvider.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/services.dart';

class CognitoSignUpResult extends SignUpResult {
  CognitoSignUpResultProvider provider;
  CognitoSignUpResult(this.provider, String signUpState, [AuthError error]) : super.init(signUpState, provider, error);
}
import 'package:amplify_auth_cognito/src/CognitoSignIn/CognitoSignInResultProvider.dart';
import 'package:amplify_auth_cognito/src/CognitoSignIn/CognitoSignInResultProvider.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/services.dart';

class CognitoSignInResult extends SignInResult {
  CognitoSignInResultProvider provider;
  CognitoSignInResult(this.provider, String signUpState, [PlatformException platformException]) : super.init(signUpState, platformException);
}
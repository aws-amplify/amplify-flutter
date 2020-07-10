import 'package:amplify_auth_cognito/src/CognitoSignUp/CognitoSignUpResultProvider.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoSignUpResult extends SignUpResult {
  CognitoSignUpResult(CognitoSignUpResultProvider provider, String signUpState) : super.init(signUpState, provider.serializeAsMap());
}
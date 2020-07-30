import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoSignUpResult extends SignUpResult {
  CognitoSignUpResult({nextStep, isSignUpComplete}) : super(isSignUpComplete: isSignUpComplete, nextStep: nextStep);
}

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoSignInResult extends SignInResult {
  CognitoSignInResult({nextStep, isSignedIn}) : super(isSignedIn: isSignedIn, nextStep: nextStep);
}

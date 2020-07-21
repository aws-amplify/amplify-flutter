import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import '../Cognito/AuthNextStep.dart';
import 'package:flutter/foundation.dart';

class CognitoSignInResultProvider extends AuthResultProvider {
  AuthNextStep authNextSignInStep;
  CognitoSignInResultProvider(AuthNextStep nextStep) {
    this.authNextSignInStep = nextStep;
  }
}


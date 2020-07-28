import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
<<<<<<< HEAD
import '../Cognito/AuthNextStep.dart';
import 'package:flutter/foundation.dart';

class CognitoSignUpResultProvider extends AuthResultProvider {
  AuthNextStep authNextSignUpStep;
  CognitoSignUpResultProvider(AuthNextStep nextStep) {
    this.authNextSignUpStep = nextStep;
  }
}

=======

class CognitoSignUpResultProvider extends AuthResultProvider {
  CognitoSignUpResultProvider();
}
>>>>>>> amplify_auth

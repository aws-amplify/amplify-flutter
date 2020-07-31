import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/foundation.dart';


class SignInResult {
  bool isSignedIn;
  AuthNextSignInStep nextStep;
  SignInResult({@required this.isSignedIn, this.nextStep}) {
    this.isSignedIn = isSignedIn;
    this.nextStep = nextStep;
   }
}
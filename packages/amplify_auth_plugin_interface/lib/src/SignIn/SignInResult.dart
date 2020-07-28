import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/foundation.dart';


class SignInResult {
  String signInState;
  AuthResultProvider providerResult;
  AuthNextStep nextStep;
  AuthError error;
  SignInResult.init({@required this.signInState, this.nextStep, AuthResultProvider providerResult, AuthError authError}) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is a valid enum while also maintaining simple string value */
    this.signInState = enumToString(enumFromString<SignInState>(signInState, SignInState.values));
    this.nextStep = nextStep;
    this.providerResult = providerResult;
    this.error = authError;
   }
}
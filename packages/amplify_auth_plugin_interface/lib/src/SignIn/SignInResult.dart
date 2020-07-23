import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

import '../SignIn/SignInState.dart';
import '../Providers/AuthResultProvider.dart';
import 'package:flutter/services.dart';

class SignInResult {
  String signInState;
  AuthResultProvider providerResult;
  AuthError error;
  SignInResult.init(this.signInState, [AuthResultProvider providerResult, AuthError authError]) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is a valid enum while also maintaining simple string value */
    this.signInState = enumToString(enumFromString<SignInState>(signInState, SignInState.values));
    this.providerResult = providerResult;
    this.error = authError;
   }
}
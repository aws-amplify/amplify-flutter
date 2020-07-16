import 'package:amplify_auth_plugin_interface/src/SignIn/SignInState.dart';
import 'package:flutter/services.dart';

class SignInResult {
  String signInState;
  PlatformException platformException;
  SignInResult.init(this.signInState, [PlatformException platformException]) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is a valid enum while also maintaining simple string value */
    this.signInState = enumToString(enumFromString<SignInState>(signInState, SignInState.values));
    this.platformException = platformException;
   }
}
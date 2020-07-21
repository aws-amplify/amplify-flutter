import '../SignIn/SignInState.dart';
import '../Providers/AuthResultProvider.dart';
import 'package:flutter/services.dart';

class SignInResult {
  String signInState;
  AuthResultProvider providerResult;
  PlatformException platformException;
  SignInResult.init(this.signInState, [AuthResultProvider providerResult, PlatformException platformException]) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is a valid enum while also maintaining simple string value */
    this.signInState = enumToString(enumFromString<SignInState>(signInState, SignInState.values));
    this.platformException = platformException;
   }
}
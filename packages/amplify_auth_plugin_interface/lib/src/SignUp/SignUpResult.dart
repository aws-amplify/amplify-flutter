import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'SignUpState.dart';

class SignUpResult { 
  String signUpState;
  PlatformException platformException;
  SignUpResult.init(this.signUpState, [PlatformException platformException]) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is enumerated while also maintaining simple string value */
    this.signUpState = enumToString(enumFromString<SignUpState>(signUpState, SignUpState.values));
    this.platformException = platformException;
   }
}

    
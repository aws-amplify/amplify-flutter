import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class SignUpResult { 
  Map<dynamic, dynamic> providerData;
  String signUpState;
  PlatformException platformException;
  SignUpResult.init(this.signUpState, this.providerData, [PlatformException platformException]) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is enumerated while also maintaining simple string value */
    this.signUpState = enumToString(enumFromString<SignUpState>(signUpState, SignUpState.values));
    this.providerData = providerData;
    this.platformException = platformException;
   }
}

enum SignUpState {
  CONFIRM_SIGN_UP_STEP,
  DONE,
  ERROR
}

String enumToString(Object o) => o.toString().split('.').last;

T enumFromString<T>(String key, List<T> values) =>
    values.firstWhere((v) => key == enumToString(v), orElse: () => null);
import 'package:amplify_auth_plugin_interface/src/Errors/AuthError.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'SignUpState.dart';
import '../EnumHandler.dart';


class SignUpResult { 
  String signUpState;
  AuthError error;
  SignUpResult.init(this.signUpState, [AuthError authError]) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is a valid enum while also maintaining simple string value */
    this.signUpState = enumToString(enumFromString<SignUpState>(signUpState, SignUpState.values));
    this.error = authError;
   }
}

    
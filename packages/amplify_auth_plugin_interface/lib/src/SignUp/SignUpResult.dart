import 'package:amplify_auth_plugin_interface/src/Errors/AuthError.dart';
import 'package:flutter/foundation.dart';
import 'SignUpState.dart';
import '../EnumHandler.dart';


class SignUpResult { 
  String signUpState;
  SignUpResultProvider providerResult;
  AuthError error;
  SignUpResult.init({@required this.signUpState, SignUpResultProvider providerResult, AuthError authError}) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is enumerated while also maintaining simple string value */
    this.signUpState = enumToString(enumFromString<SignUpState>(signUpState, SignUpState.values));
    this.error = authError;
    this.providerResult = providerResult;
   }
}

abstract class SignUpResultProvider {
  Map<String, dynamic> serializeAsMap() {
    throw UnimplementedError('serializeAsMap() has not been implemented on providerOptions.');
  }
}

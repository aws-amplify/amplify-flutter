import 'package:amplify_auth_plugin_interface/src/Errors/AuthError.dart';
import 'package:amplify_auth_plugin_interface/src/UtilityClasses/AuthNextStep.dart';
import 'package:amplify_auth_plugin_interface/src/Providers/AuthResultProvider.dart';
import 'package:flutter/foundation.dart';
import 'SignUpState.dart';
import '../EnumHandler.dart';


class SignUpResult { 
  String signUpState;
  AuthResultProvider providerResult;
  AuthNextStep nextStep;
  AuthError error;
  SignUpResult.init({@required this.signUpState, this.nextStep, AuthResultProvider providerResult, AuthError authError}) {
    /* 2-step process of getting an enum from a string and back is a way of checking that
     the value is enumerated while also maintaining simple string value */
    this.signUpState = enumToString(enumFromString<SignUpState>(signUpState, SignUpState.values));
    this.nextStep = nextStep;
    this.error = authError;
    this.providerResult = providerResult;
   }
}

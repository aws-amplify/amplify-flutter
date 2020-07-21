import 'dart:collection';

import 'package:amplify_auth_cognito/src/CognitoSignUp/CognitoSignUpResultProvider.dart';
import 'package:flutter/services.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'amplify_auth_cognito.dart';
import 'src/EnumHandler.dart';
import 'src/CognitoSignUp/CognitoSignUpExceptions.dart';
import 'src/Cognito/AuthNextStep.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/auth_cognito');

/// An implementation of [AmplifyPlatform] that uses method channels.
class AmplifyAuthCognitoMethodChannel extends AmplifyAuthCognito {

  @override
  Future<SignUpResult> signUp({SignUpRequest request, AuthRequestProvider provider, Function(SignUpResult) success, Function(SignUpResult) error}) async {
    SignUpResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'signUp',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      );
      res = _formatSignUpResponse(data);
      return res;
      
    } on PlatformException catch(e) {
      res = _formatSignUpError(e);
      return res;
    }
  }

    @override
  Future<SignUpResult> confirmSignUp({ConfirmSignUpRequest request, AuthRequestProvider provider, Function(SignUpResult) success, Function(SignUpResult) error}) async {
    SignUpResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'confirmSignUp',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      );
      res = _formatSignUpResponse(data);
      return res;
      
    } on PlatformException catch(e) {
      res = _formatSignUpError(e);
      return res;
    }
  }


  @override
  Future<SignInResult> signIn({SignInRequest request, Function(SignInResult) success, Function(SignInResult) error}) async {
    SignInResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'signIn',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      );
      res = _formatSignInResponse(data);
      return res;
      
    } on PlatformException catch(e) {
      res = _formatSignInError(e);
      return res;
    }
  }

  SignUpResult _formatSignUpResponse(Map<String, dynamic> signUpResponse) {
    Map<dynamic, dynamic> providerMap = signUpResponse["providerData"];
    Map<String , dynamic> deliveryDetails = {};
    if (providerMap["nextStep"] != null && providerMap["nextStep"]["codeDeliveryDetails"] != null) {
      deliveryDetails = Map.from(providerMap["nextStep"]["codeDeliveryDetails"]);
    }
    CognitoSignUpResultProvider providerData = CognitoSignUpResultProvider(AuthNextStep(rawDetails: deliveryDetails));
    return SignUpResult.init(signUpResponse["signUpState"], providerData);
  }

  SignInResult _formatSignInResponse(Map<String, dynamic> signInResponse) {
    Map<dynamic, dynamic> providerMap = signInResponse["providerData"];
    Map<String , dynamic> deliveryDetails = {};
    if (providerMap["nextStep"] != null && providerMap["nextStep"]["codeDeliveryDetails"] != null) {
      deliveryDetails = Map.from(providerMap["nextStep"]["codeDeliveryDetails"]);
    }
    CognitoSignInResultProvider providerData = CognitoSignInResultProvider(AuthNextStep(rawDetails: deliveryDetails));
    return SignInResult.init(signInResponse["signInState"], providerData);
  }

  SignUpResult _formatSignUpError(PlatformException e) {
    CognitoSignUpResultProvider providerData = CognitoSignUpResultProvider(AuthNextStep(rawDetails: {}));
    LinkedHashMap eMap = new LinkedHashMap<String, String>();
    e.details.forEach((k, v) => {
      if (enumFromString<CognitoSignUpException>(k, CognitoSignUpException.values) != null) {
        eMap.putIfAbsent(k, () => v as String)
      }
    });
    AuthError error = AuthError.init(authErrorType: e.message, errorMap: eMap);
    return SignUpResult.init("ERROR", providerData, error); 
  }

  SignInResult _formatSignInError(PlatformException error) {
    CognitoSignInResultProvider providerData = CognitoSignInResultProvider(AuthNextStep(rawDetails: {}));
    return SignInResult.init("ERROR", providerData, error); 
  }
}


import 'dart:convert';
import 'package:amplify_auth_cognito/src/CognitoSignUp/CognitoSignUpResultProvider.dart';
import 'package:flutter/services.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'amplify_auth_cognito.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/auth_cognito');

/// An implementation of [AmplifyPlatform] that uses method channels.
class AmplifyAuthCognitoMethodChannel extends AmplifyAuthCognito {

  @override
  Future<SignUpResult> signUp({SignUpRequest request, Function(SignUpResult) success, Function(SignUpResult) error}) async {
    CognitoSignUpResult res;
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
  Future<SignUpResult> confirmSignUp({ConfirmSignUpRequest request, Function(SignUpResult) success, Function(SignUpResult) error}) async {
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

  CognitoSignUpResult _formatSignUpResponse(Map<String, dynamic> signUpResponse) {
    Map<dynamic, dynamic> providerMap = signUpResponse["providerData"];
    Map<String , dynamic> deliveryDetails = {};
    if (providerMap["nextStep"] != null && providerMap["nextStep"]["codeDeliveryDetails"] != null) {
      deliveryDetails = Map.from(providerMap["nextStep"]["codeDeliveryDetails"]);
    }
    CognitoSignUpResultProvider providerData = CognitoSignUpResultProvider(AuthNextSignUpStep(rawDetails: deliveryDetails));
    return CognitoSignUpResult(providerData, signUpResponse["signUpState"]);
  }

  CognitoSignInResult _formatSignInResponse(Map<String, dynamic> signInResponse) {
    Map<dynamic, dynamic> providerMap = signInResponse["providerData"];
    Map<String , dynamic> deliveryDetails = {};
    if (providerMap["nextStep"] != null && providerMap["nextStep"]["codeDeliveryDetails"] != null) {
      deliveryDetails = Map.from(providerMap["nextStep"]["codeDeliveryDetails"]);
    }
    CognitoSignInResultProvider providerData = CognitoSignInResultProvider(AuthNextSignInStep(rawDetails: deliveryDetails));
    return CognitoSignInResult(providerData, signInResponse["signInState"]);
  }

  CognitoSignUpResult _formatSignUpError(PlatformException error) {
    CognitoSignUpResultProvider providerData = CognitoSignUpResultProvider(AuthNextSignUpStep(rawDetails: {}));
    return CognitoSignUpResult(providerData, "ERROR", error); 
  }

  CognitoSignInResult _formatSignInError(PlatformException error) {
    CognitoSignInResultProvider providerData = CognitoSignInResultProvider(AuthNextSignInStep(rawDetails: {}));
    return CognitoSignInResult(providerData, "ERROR", error); 
  }
}

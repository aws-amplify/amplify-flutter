import 'dart:collection';

import 'package:amplify_auth_cognito/src/CognitoSignUp/CognitoSignUpResultProvider.dart';
import 'package:flutter/services.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'amplify_auth_cognito.dart';
import 'src/EnumHandler.dart';


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

  @override
  Future<SignInResult> confirmSignIn({ConfirmSignInRequest request, AuthRequestProvider provider, Function(SignInResult) success, Function(SignInResult) error}) async {
    SignInResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'confirmSignIn',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      res = _formatSignInResponse(data);
      return res;
      
    } on PlatformException catch(e) {
      res = _formatSignInError(e);
      return res;
    }
  }

  @override
  Future<SignOutResult> signOut({SignOutRequest request, AuthRequestProvider provider, Function(SignOutResult) success, Function(SignOutResult) error}) async {
    SignOutResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'signOut',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      res = _formatSignOutResponse(data);
      return res;
      
    } on PlatformException catch(e) {
      res = _formatSignOutError(e);
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
    Map<String , dynamic> additionalInfo = {};
    if (providerMap["nextStep"] != null && providerMap["nextStep"] != null) {
      if (providerMap["nextStep"]["codeDeliveryDetails"] != null) {
        deliveryDetails = Map.from(providerMap["nextStep"]["codeDeliveryDetails"]);
      }
      if (providerMap["nextStep"]["additionalInfo"] != null) {
        additionalInfo = Map.from(providerMap["nextStep"]["additionalInfo"]);
      }

    }
    CognitoSignInResultProvider providerData = CognitoSignInResultProvider(AuthNextStep(rawDetails: deliveryDetails, additionalInfo: additionalInfo));
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

  SignInResult _formatSignInError(PlatformException e) {
    CognitoSignInResultProvider providerData = CognitoSignInResultProvider(AuthNextStep(rawDetails: {}));
    LinkedHashMap eMap = new LinkedHashMap<String, String>();
    e.details.forEach((k, v) => {
      if (enumFromString<CognitoSignUpException>(k, CognitoSignUpException.values) != null) {
        eMap.putIfAbsent(k, () => v as String)
      }
    });
    AuthError error = AuthError.init(authErrorType: e.message, errorMap: eMap);
    return SignInResult.init("ERROR", providerData, error); 
  }

  SignOutResult _formatSignOutResponse(Map<String, dynamic> signOutResponse) {
    return SignOutResult.init(signOutResponse["signOutState"]);
  }

  SignOutResult _formatSignOutError(PlatformException e) {
    LinkedHashMap eMap = new LinkedHashMap<String, String>();
    e.details.forEach((k, v) => {
      if (enumFromString<CognitoSignOutException>(k, CognitoSignOutException.values) != null) {
        eMap.putIfAbsent(k, () => v as String)
      }
    });
    AuthError error = AuthError.init(authErrorType: e.message, errorMap: eMap);
    return SignOutResult.init("ERROR", null, error); 
  }
}


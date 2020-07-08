import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'amplify_auth.dart';
import 'types/types.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/auth');

/// An implementation of [AmplifyPlatform] that uses method channels.
class AmplifyAuthMethodChannel extends AmplifyAuth {

  @override
  Future<SignInResult> signIn(SignInRequest request) async {
    
    // await _channel.invokeMethod('put', request);
     final Map<String, dynamic> data =
        await _channel.invokeMapMethod<String, dynamic>(
      'signIn',
      request,
    );
    return _decodeAuthResponse(data);
  }

  @override
  Future<SignUpResult> signUp(SignUpRequest request) async {
    
    // await _channel.invokeMethod('put', request);
     final Map<String, dynamic> data =
        await _channel.invokeMapMethod<String, dynamic>(
      'signUp',
      <String, dynamic>{
        'data': request.serializeAsMap(),
      },
    );
    return _formatSignUpResponse(data);
  }

  SignUpResult _formatSignUpResponse(Map<String, dynamic> signUpResponse) {
    Map<String, dynamic> res = {};
    CognitoProvider providerData = CognitoProvider.fromJson(signUpResponse);
    res.putIfAbsent("providerData", () => providerData.serializeAsMap());
    res.putIfAbsent("signUpState", () => signUpResponse["signUpState"]);
    return SignUpResult.fromJson(res); 
  }

  SignInResult _decodeAuthResponse(Map<String, dynamic> signInResponse) {
    print("AuthResponse" + signInResponse.toString());
    return new SignInResult(result: signInResponse["data"]);
  }

}

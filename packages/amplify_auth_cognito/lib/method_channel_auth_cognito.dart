import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'amplify_auth_cognito.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/auth_cognito');

/// An implementation of [AmplifyPlatform] that uses method channels.
class AmplifyAuthCognitoMethodChannel extends AmplifyAuthCognito {

  @override
  Future<SignUpResult> signUp(SignUpRequest request) async {
     final Map<String, dynamic> data =
        await _channel.invokeMapMethod<String, dynamic>(
      'signUp',
      <String, dynamic>{
        'data': request.serializeAsMap(),
      },
    );
    return _formatSignUpResponse(data);
  }

  CognitoSignUpResult _formatSignUpResponse(Map<String, dynamic> signUpResponse) {
    Map<String, dynamic> res = {};
    CognitoSignUpResponse providerData = CognitoSignUpResponse.fromJson(signUpResponse);
    res.putIfAbsent("providerData", () => providerData.serializeAsMap());
    res.putIfAbsent("signUpState", () => signUpResponse["signUpState"]);
    return CognitoSignUpResult.fromJson(res); 
  }
}

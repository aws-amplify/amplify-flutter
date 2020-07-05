import 'package:flutter/services.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'amplify_auth.dart';

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
    return SignUpResult(result: data["data"]);
  }

  SignInResult _decodeAuthResponse(Map<String, dynamic> signInResponse) {
    print("AuthResponse" + signInResponse.toString());
    return new SignInResult(result: signInResponse["data"]);
  }

}

import 'dart:collection';

import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'amplify_auth_cognito.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/auth_cognito');

/// An implementation of [AmplifyPlatform] that uses method channels.
class AmplifyAuthCognitoMethodChannel extends AmplifyAuthCognito {

  @override
  Future<SignUpResult> signUp({SignUpRequest request}) async {
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
      
    } on PlatformException catch(e) {
      _formatSignUpError(e);
    }
    return res;
  }


  SignUpResult _formatSignUpResponse(Map<String, dynamic> res) {
    return CognitoSignUpResult( isSignUpComplete: res["isSignUpComplete"], nextStep: AuthNextSignUpStep(
      signUpStep: res["nextStep"]["signUpStep"],
      codeDeliveryDetails: res["nextStep"]["codeDeliveryDetails"],
      additionalInfo: res["nextStep"]["additionalInfo"] is String ? jsonDecode(res["nextStep"]["additionalInfo"]) : {}
      ));
  }

  void _formatSignUpError(PlatformException e) {
    LinkedHashMap eMap = new LinkedHashMap<String, dynamic>();
    e.details.forEach((k, v) => {
      if (cognitoSignUpException.contains(k)) {
        eMap.putIfAbsent(k, () => v)
      } else {
        eMap.putIfAbsent("UNRECOGNIZED EXCEPTION", () => "See logs for details")
      }
    });
    AuthError error = AuthError.init(cause: e.message, errorMap: eMap);
    throw(error);
  }
}


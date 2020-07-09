import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/foundation.dart';

class CognitoSignUpRequest extends SignUpRequest {
  CognitoSignUpRequest(username, password, options) : super(username, password, options);
}

class CognitoSignUpOptions extends SignUpOptions {
  Map<String, dynamic> userAttributes;
  CognitoSignUpProvider providerOptions;
  CognitoSignUpOptions({@required this.userAttributes, this.providerOptions}) : super(userAttributes, providerOptions);
}

class CognitoSignUpProvider extends SignUpProvider {
  String usernameAttribute;
  Map<String, String> validationData;
  CognitoSignUpProvider({this.usernameAttribute, this.validationData});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (this.usernameAttribute != null) {
      pendingRequest["usernameAttribute"] = usernameAttribute;
    }
    if (this.validationData != null) {
      pendingRequest["validationData"] = validationData;
    }
    return pendingRequest;
  }
}


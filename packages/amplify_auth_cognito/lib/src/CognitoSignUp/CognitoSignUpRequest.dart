import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/foundation.dart';

class CognitoSignUpRequest extends SignUpRequest {
  CognitoSignUpRequest({String username, @required String password, @required CognitoSignUpOptions options}) : super(username: username, password: password, options: options);
}

class CognitoSignUpOptions extends SignUpOptions {
  Map<String, dynamic> userAttributes;
  CognitoSignUpOptions({@required this.userAttributes}) : super(userAttributes: userAttributes);
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


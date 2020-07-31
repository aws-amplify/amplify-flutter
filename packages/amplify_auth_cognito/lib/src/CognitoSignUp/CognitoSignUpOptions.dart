import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoSignUpOptions extends SignUpOptions {
  String usernameAttribute;
  Map<String, String> validationData;
  CognitoSignUpOptions({userAttributes, this.usernameAttribute, this.validationData}) : super(userAttributes: userAttributes);
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (this.usernameAttribute != null) {
      pendingRequest["usernameAttribute"] = usernameAttribute;
    }
    if (this.validationData != null) {
      pendingRequest["validationData"] = validationData;
    }
    pendingRequest["userAttributes"] = userAttributes;
    return pendingRequest;
  }
}


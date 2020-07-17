import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

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


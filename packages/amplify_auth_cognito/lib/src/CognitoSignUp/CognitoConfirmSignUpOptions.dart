import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoConfirmSignUpOptions extends ConfirmSignUpOptions {
  Map<String, String> validationData;
  CognitoConfirmSignUpOptions({this.validationData}) : super();
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (this.validationData != null) {
      pendingRequest["validationData"] = validationData;
    }
    return pendingRequest;
  }
}
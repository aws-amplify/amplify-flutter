import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoSignInOptions extends SignInOptions {
  Map<String, String> clientMetadata;
  CognitoSignInOptions({this.clientMetadata}) : super();
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (this.clientMetadata != null) {
      pendingRequest["validationData"] = clientMetadata;
    }
    return pendingRequest;
  }
}


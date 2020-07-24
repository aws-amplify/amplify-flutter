import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoConfirmSignInRequestProvider extends AuthRequestProvider {
  Map<String, String> clientMetadata;
  CognitoConfirmSignInRequestProvider({this.clientMetadata});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (this.clientMetadata != null) {
      pendingRequest["clientMetadata"] = clientMetadata;
    }
    return pendingRequest;
  }
}


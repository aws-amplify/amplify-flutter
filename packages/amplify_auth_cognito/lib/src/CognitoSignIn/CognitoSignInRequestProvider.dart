import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/foundation.dart';

class CognitoSignInRequestProvider extends AuthRequestProvider {
  Map<String, String> clientMetadata;
  CognitoSignInRequestProvider({this.clientMetadata});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (this.clientMetadata != null) {
      pendingRequest["clientMetadata"] = clientMetadata;
    }
    return pendingRequest;
  }
}
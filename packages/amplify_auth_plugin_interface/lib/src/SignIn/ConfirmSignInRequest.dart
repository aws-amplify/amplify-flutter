import 'package:amplify_auth_plugin_interface/src/Providers/AuthRequestProvider.dart';
import 'package:flutter/foundation.dart';

class ConfirmSignInRequest {
  String userKey;
  String confirmationValue;
  AuthRequestProvider provider;
  ConfirmSignInRequest({this.userKey, @required this.confirmationValue, this.provider});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (userKey != null) {
      pendingRequest['username'] = userKey;
    }
    if (provider != null) {
      pendingRequest['providerOptions'] = provider.serializeAsMap();
    }
    pendingRequest["confirmationCode"] = confirmationValue;
    return pendingRequest;
  }
}
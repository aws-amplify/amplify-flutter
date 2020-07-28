import 'package:amplify_auth_plugin_interface/src/Providers/AuthRequestProvider.dart';
import 'package:flutter/foundation.dart';
import '../Providers/AuthRequestProvider.dart';

class SignUpRequest {
  String username;
  String password;
  SignUpRequestOptions options;
  AuthRequestProvider provider;
  SignUpRequest({this.username, @required this.password, this.provider, this.options});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (username != null) {
      pendingRequest['username'] = username;
    }
    pendingRequest['password'] = password;
    pendingRequest['userAttributes'] = options?.userAttributes;
    if (provider != null) {
      pendingRequest['providerOptions'] = provider?.serializeAsMap();
    }    
    return pendingRequest;
  }
}

class SignUpRequestOptions {
  final Map<String, dynamic> userAttributes;
  const SignUpRequestOptions({@required this.userAttributes});
}

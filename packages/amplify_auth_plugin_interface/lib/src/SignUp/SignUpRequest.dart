import 'package:flutter/foundation.dart';
import '../Providers/AuthRequestProvider.dart';

class SignUpRequest {
  String username;
  String password;
  SignUpOptions options;
  AuthRequestProvider provider;
  SignUpRequest({this.username, @required this.password, this.provider, this.options});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (username != null) {
      pendingRequest['username'] = username;
    }
    if (password != null) {
      pendingRequest['password'] = password;
    }
    if (options != null) {
      if (options.userAttributes != null) {
        pendingRequest['userAttributes'] = options.userAttributes;
      }
    }
    if (provider != null) {
      pendingRequest['providerOptions'] = provider.serializeAsMap();
    }
    return pendingRequest;
  }
}

class SignUpOptions {
  final Map<String, dynamic> userAttributes;
  const SignUpOptions({@required this.userAttributes});
}


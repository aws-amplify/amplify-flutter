import './SignUpOptions.dart';
import 'package:flutter/foundation.dart';

class SignUpRequest {
  String username;
  String password;
  SignUpOptions options;

  SignUpRequest({this.username, @required this.password, @required this.options});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (username != null) {
      pendingRequest['username'] = username;
    }
    pendingRequest['password'] = password;
    pendingRequest['options'] = options.serializeAsMap();
    return pendingRequest;
  }
}

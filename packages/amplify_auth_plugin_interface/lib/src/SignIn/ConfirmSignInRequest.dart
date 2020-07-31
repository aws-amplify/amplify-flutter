import 'package:flutter/foundation.dart';

class ConfirmSignInRequest {
  String userKey;
  String confirmationValue;
  ConfirmSignInRequest({this.userKey, @required this.confirmationValue});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (userKey != null) {
      pendingRequest['username'] = userKey;
    }
    pendingRequest["confirmationCode"] = confirmationValue;
    return pendingRequest;
  }
}
import 'package:flutter/foundation.dart';

class ConfirmSignUpRequest {
  String userKey;
  String confirmationCode;
  ConfirmSignUpRequest({@required this.userKey, @required this.confirmationCode});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    pendingRequest['userKey'] = userKey;
    pendingRequest['confirmationCode'] = confirmationCode;
    return pendingRequest;
  }
}
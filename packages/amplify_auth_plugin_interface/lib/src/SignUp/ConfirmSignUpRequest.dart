class ConfirmSignUpRequest {
  String userKey;
  String confirmationCode;
  ConfirmSignUpRequest({this.userKey, this.confirmationCode});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (userKey != null) {
      pendingRequest['username'] = userKey;
    }
    if (confirmationCode != null) {
      pendingRequest['confirmationCode'] = confirmationCode;
    }
    return pendingRequest;
  }
}
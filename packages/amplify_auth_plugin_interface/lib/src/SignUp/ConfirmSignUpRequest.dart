class ConfirmSignUpRequest {
  String username;
  String confirmationCode;
  ConfirmSignUpRequest(this.username, this.confirmationCode);
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (username != null) {
      pendingRequest['username'] = username;
    }
    if (confirmationCode != null) {
      pendingRequest['confirmationCode'] = confirmationCode;
    }
    return pendingRequest;
  }
}
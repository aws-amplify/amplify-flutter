class SignInRequest {
  String username;
  String password;
  SignInRequest(this.username, this.password);
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (username != null) {
      pendingRequest['username'] = username;
    }
    if (password != null) {
      pendingRequest['password'] = password;
    }
    return pendingRequest;
  }
}
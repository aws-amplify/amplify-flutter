class SignUpRequest {
  String username;
  String password;
  SignUpOptions options;
  SignUpRequest(this.username, this.password, this.options);
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
      if (options.providerOptions != null) {
        pendingRequest['providerOptions'] = options.providerOptions.serializeAsMap();
      }
    }
    return pendingRequest;
  }
}

class SignUpOptions {
  final Map<String, dynamic> userAttributes;
  final dynamic providerOptions;
  const SignUpOptions(this.userAttributes, this.providerOptions);
}

abstract class SignUpProvider {
  Map<String, dynamic> serializeAsMap() {
    throw UnimplementedError('serializeAsMpa() has not been implemented on providerOptions.');
  }
}

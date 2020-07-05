part of amplify_auth_plugin_interface;


class SignInRequest {
  final String username;
  final String password;
  const SignInRequest({this.username, this.password});
}

class SignInResult {
  final Map error;
  final Map result;
  const SignInResult({this.error, this.result});
}

class SignUpRequest {
  final String username;
  final String password;
  final SignUpOptions options;
  const SignUpRequest({
    this.username, 
    this.password,
    this.options
  });
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
      if (options.usernameAttribute != null) {
        pendingRequest['usernameAttribute'] = options.usernameAttribute;
      }
      if (options.validationData != null) {
        pendingRequest['validationData'] = options.validationData;
      }
    }

    return pendingRequest;
  }
}

class SignUpResult {
  final Map error;
  final Map result;
  const SignUpResult({this.error, this.result});
}

class SignUpOptions {
  final Map<String, dynamic> userAttributes;
  final Map<String, String> clientMetadata;
  final String usernameAttribute;
  final Map<String, String> validationData;
  const SignUpOptions({@required this.userAttributes, this.clientMetadata, this.usernameAttribute, this.validationData});
}


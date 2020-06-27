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


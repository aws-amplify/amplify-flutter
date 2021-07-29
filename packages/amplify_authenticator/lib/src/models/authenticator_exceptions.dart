class AuthenticatorException implements Exception {
  String? message;

  AuthenticatorException(this.message);

  @override
  String toString() => message!.toString();
}

class AuthenticatorException implements Exception {
  final String message;

  AuthenticatorException(this.message);

  @override
  String toString() => message.toString();
}

class AuthenticatorException implements Exception {
  final String message;

  const AuthenticatorException([this.message = 'An unknown error occurred.']);

  @override
  String toString() => 'AuthException{ message: "$message" }';
}

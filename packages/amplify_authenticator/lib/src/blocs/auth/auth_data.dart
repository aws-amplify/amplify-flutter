import 'package:meta/meta.dart';

enum AuthScreen { signup, signin, confirmSignUp }

@immutable
abstract class AuthData {}

class AuthSignInData extends AuthData {
  AuthSignInData({this.username, this.password});

  final String? username;
  final String? password;
}

class AuthSignUpData extends AuthData {
  AuthSignUpData(
      {required this.password,
      required this.username,
      required this.attributes});

  final Map<String, String>? attributes;
  final String? password;
  final String? username;
}

class AuthConfirmSignUpData extends AuthData {
  final String? code;
  final String? username;

  AuthConfirmSignUpData({this.username, this.code});
}

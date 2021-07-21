import 'package:meta/meta.dart';

// ignore: public_member_api_docs
enum AuthScreen { signup, signin, confirmSignUp }

@immutable
abstract class AuthData {}

class AuthSignInData extends AuthData {
  AuthSignInData({this.username, this.password});

  final String? username;

  final String? password;
}

///Sign Up Data
class AuthSignUpData extends AuthData {
  AuthSignUpData(
      {required this.password,
      required this.username,
      required this.attributes});

  ///attributes
  final Map<String, String>? attributes;

  final String? password;

  final String? username;
}

class AuthConfirmSignUpData extends AuthData {
  final String? code;

  final String? username;

  AuthConfirmSignUpData({this.username, this.code});
}

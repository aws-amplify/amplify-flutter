import 'package:meta/meta.dart';

/// Auth Screens
// ignore: public_member_api_docs
enum AuthScreen { signup, signin, confirmSignUp }

@immutable

///Auth Data
abstract class AuthData {}

/// Sign In Data
class AuthSignInData extends AuthData {
  ///Constructor
  AuthSignInData({this.username, this.password});

  ///username
  final String? username;

  ///password
  final String? password;
}

///Sign Up Data
class AuthSignUpData extends AuthData {
  ///Constructor
  AuthSignUpData(
      {required this.password,
      required this.username,
      required this.attributes});

  ///attributes
  final Map<String, String>? attributes;

  /// password
  final String? password;

  /// username
  final String? username;
}

///Auth Confirm Sign Up Data
class AuthConfirmSignUpData extends AuthData {
  ///code
  final String? code;

  ///username
  final String? username;

  ///Constructor
  AuthConfirmSignUpData({this.username, this.code});
}

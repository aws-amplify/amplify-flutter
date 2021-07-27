// ignore: public_member_api_docs
enum AuthScreen { signup, signin, confirmSignUp }

class AuthSignInData {
  AuthSignInData({required this.username, required this.password});

  final String username;

  final String password;
}

///Sign Up Data
class AuthSignUpData {
  AuthSignUpData(
      {required this.password,
      required this.username,
      required this.attributes});

  ///attributes
  final Map<String, String> attributes;

  final String password;

  final String username;
}

class AuthConfirmSignUpData {
  final String code;

  final String username;

  AuthConfirmSignUpData({required this.username, required this.code});
}

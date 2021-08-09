// ignore: public_member_api_docs
enum AuthScreen {
  signup,
  signin,
  confirmSignUp,
  confirmSignInMfa,
  confirmSignInNewPassword,
  sendCode,
  resetPassword,
}

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

  final String password;

  AuthConfirmSignUpData(
      {required this.username, required this.code, required this.password});
}

class AuthSendCodeData {
  AuthSendCodeData({required this.username});
  final String username;
}

class AuthConfirmPasswordData {
  AuthConfirmPasswordData(
      {required this.username,
      required this.newPassword,
      required this.confirmationCode});
  final String username;
  final String newPassword;
  final String confirmationCode;
}

class AuthUpdatePasswordData {
  AuthUpdatePasswordData(
      {required this.username, required this.newPassword, this.attributes});

  Map<String, String>? attributes;
  final String username;
  final String newPassword;
}

class AuthConfirmSignInData {
  final String code;

  Map<String, String>? attributes;

  AuthConfirmSignInData({
    required this.code,
    this.attributes,
  });
}

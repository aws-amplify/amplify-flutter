// ignore: public_member_api_docs
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

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
  const AuthSignInData({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;
}

///Sign Up Data
class AuthSignUpData {
  const AuthSignUpData({
    required this.password,
    required this.username,
    Map<CognitoUserAttributes, String> attributes = const {},
  }) : _attributes = attributes;

  final Map<CognitoUserAttributes, String> _attributes;

  Map<String, String> get attributes {
    return _attributes.map((key, value) => MapEntry(key.value, value));
  }

  final String password;

  final String username;
}

class AuthConfirmSignUpData {
  final String code;

  final String username;

  final String password;

  const AuthConfirmSignUpData({
    required this.username,
    required this.code,
    required this.password,
  });
}

class AuthConfirmSignInMFAData {
  const AuthConfirmSignInMFAData({
    required this.code,
    Map<CognitoUserAttributes, String> attributes = const {},
  }) : _attributes = attributes;

  final String code;

  final Map<CognitoUserAttributes, String> _attributes;

  Map<String, String> get attributes {
    return _attributes.map((key, value) => MapEntry(key.value, value));
  }
}

class AuthConfirmSignInNewPasswordData {
  const AuthConfirmSignInNewPasswordData({
    required this.code,
    Map<CognitoUserAttributes, String> attributes = const {},
    required this.username,
    required this.password,
  }) : _attributes = attributes;

  final String code;

  final String username;
  final String password;

  final Map<CognitoUserAttributes, String> _attributes;

  Map<String, String> get attributes {
    return _attributes.map((key, value) => MapEntry(key.value, value));
  }
}

class AuthSendCodeData {
  const AuthSendCodeData({
    required this.username,
  });

  final String username;
}

class AuthConfirmPasswordData {
  const AuthConfirmPasswordData({
    required this.username,
    required this.newPassword,
    required this.confirmationCode,
  });

  final String username;
  final String newPassword;
  final String confirmationCode;
}

class AuthUpdatePasswordData {
  const AuthUpdatePasswordData({
    required this.username,
    required this.newPassword,
    Map<CognitoUserAttributes, String> attributes = const {},
  }) : _attributes = attributes;

  final String username;
  final String newPassword;

  final Map<CognitoUserAttributes, String> _attributes;

  Map<String, String> get attributes {
    return _attributes.map((key, value) => MapEntry(key.value, value));
  }
}

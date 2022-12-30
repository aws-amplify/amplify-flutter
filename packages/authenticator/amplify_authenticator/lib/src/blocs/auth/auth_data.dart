// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

abstract class AuthSignInData {
  const AuthSignInData();
}

class AuthUsernamePasswordSignInData extends AuthSignInData {
  const AuthUsernamePasswordSignInData({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;
}

class AuthSocialSignInData extends AuthSignInData {
  const AuthSocialSignInData({
    required this.provider,
  });

  final AuthProvider provider;
}

///Sign Up Data
class AuthSignUpData {
  const AuthSignUpData({
    required this.password,
    required this.username,
    this.attributes = const {},
  });

  final Map<CognitoUserAttributeKey, String> attributes;

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

class AuthResetPasswordData {
  const AuthResetPasswordData({
    required this.username,
  });

  final String username;
}

class AuthConfirmResetPasswordData {
  const AuthConfirmResetPasswordData({
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
    this.attributes = const {},
  });

  final String username;
  final String newPassword;
  final Map<String, String> attributes;
}

class AuthConfirmSignInData {
  AuthConfirmSignInData({
    required this.confirmationValue,
    this.attributes = const {},
  });

  final String confirmationValue;
  final Map<CognitoUserAttributeKey, String> attributes;
}

class AuthSetUnverifiedAttributeKeysData {
  const AuthSetUnverifiedAttributeKeysData({
    required this.unverifiedAttributeKeys,
  });

  final List<String> unverifiedAttributeKeys;
}

class AuthVerifyUserData {
  const AuthVerifyUserData({
    required this.userAttributeKey,
  });

  final CognitoUserAttributeKey userAttributeKey;
}

class AuthConfirmVerifyUserData {
  const AuthConfirmVerifyUserData({
    required this.userAttributeKey,
    required this.code,
  });

  final CognitoUserAttributeKey userAttributeKey;
  final String code;
}

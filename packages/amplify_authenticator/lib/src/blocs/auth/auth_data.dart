/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

enum AuthScreen {
  signup,
  signin,
  confirmSignup,
  confirmSigninMfa,
  confirmSigninNewPassword,
  sendCode,
  resetPassword,
  verifyUser,
  confirmVerifyUser,
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
    this.attributes = const {},
  });

  final Map<String, String> attributes;

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
    this.attributes = const {},
  });

  final String username;
  final String newPassword;
  final Map<String, String> attributes;
}

class AuthConfirmSignInData {
  AuthConfirmSignInData({
    required this.code,
    this.attributes = const {},
  });

  final String code;
  final Map<String, String> attributes;
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

  final String userAttributeKey;
}

class AuthConfirmVerifyUserData {
  const AuthConfirmVerifyUserData({
    required this.userAttributeKey,
    required this.code,
  });

  final String userAttributeKey;
  final String code;
}

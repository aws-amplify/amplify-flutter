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

// ignore: public_member_api_docs
enum AuthScreen {
  signup,
  signin,
  confirmSignUp,
  confirmSignInMfa,
  confirmSignInNewPassword,
  sendCode,
  resetPassword,
  verifyUser,
  confirmVerifyUser,
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

class AuthSetUnverifiedAttributeKeysData {
  final List<String> unverifiedAttributeKeys;

  AuthSetUnverifiedAttributeKeysData({
    required this.unverifiedAttributeKeys,
  });
}

class AuthVerifyUserData {
  final String userAttributeKey;

  AuthVerifyUserData({
    required this.userAttributeKey,
  });
}

class AuthConfirmVerifyUserData {
  final String userAttributeKey;
  final String code;

  AuthConfirmVerifyUserData({
    required this.userAttributeKey,
    required this.code,
  });
}

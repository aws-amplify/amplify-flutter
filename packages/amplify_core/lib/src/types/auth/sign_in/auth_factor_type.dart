// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

/// {@category Auth}
/// {@template amplify_core.auth.auth_factor_type}
/// Enumeration of the possible mechanisms that can be used to authenticate a user when
/// signing in with USER_AUTH.
/// {@endtemplate}
enum AuthFactorType {
  /// Sign in using the user's password
  @JsonValue('PASSWORD')
  password('PASSWORD'),

  /// Sign in using the user's password via a Secure Remote Password flow
  @JsonValue('PASSWORD_SRP')
  passwordSrp('PASSWORD_SRP'),

  ///Sign in using a One Time Password sent to the user's email address
  @JsonValue('EMAIL_OTP')
  emailOtp('EMAIL_OTP'),

  /// Sign in using a One Time Password sent to the user's SMS number
  @JsonValue('SMS_OTP')
  smsOtp('SMS_OTP');

  // TODO(cadivus): Implement Passwordless Authenticator. See:
  // https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html#amazon-cognito-user-pools-authentication-flow-methods-passkey
  // https://docs.amplify.aws/react/build-a-backend/auth/concepts/passwordless/#webauthn-passkey
  // /// Sign in with WebAuthn (i.e. PassKey)
  // @JsonValue('WEB_AUTHN')
  // webAuthn('WEB_AUTHN');

  const AuthFactorType(this.value);

  final String value;
}

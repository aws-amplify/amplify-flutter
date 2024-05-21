// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

/// {@template amplify_core.amplify_outputs.maf_method}
/// The MFA method of Amazon Cognito User Pool.
/// {@endtemplate}
enum MfaMethod {
  @JsonValue('SMS')
  sms,

  @JsonValue('TOTP')
  totp;

  /// The value to pass to `Amplify.Auth.confirmSignIn` when
  /// selecting an MFA type.
  String get confirmationValue => name;
}

/// {@template amplify_core.amplify_outputs.maf_enforcement}
/// The MFA enforcement for Amazon Cognito User Pool.
/// {@endtemplate}
enum MfaEnforcement {
  @JsonValue('OPTIONAL')
  optional,

  @JsonValue('REQUIRED')
  on,

  @JsonValue('NONE')
  off,
}

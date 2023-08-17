// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

enum MfaType {
  @JsonValue('SMS')
  sms,

  @JsonValue('TOTP')
  totp;

  /// The value to pass to `Amplify.Auth.confirmSignIn` when
  /// selecting an MFA type.
  String get confirmationValue => name;
}

enum MfaConfiguration {
  @JsonValue('OPTIONAL')
  optional,

  @JsonValue('ON')
  on,

  @JsonValue('OFF')
  off,
}

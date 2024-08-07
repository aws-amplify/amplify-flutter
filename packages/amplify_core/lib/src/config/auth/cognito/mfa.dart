// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/config/amplify_outputs/auth/mfa.dart';
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

extension ToMfaMethod on MfaType {
  MfaMethod toMfaMethod() {
    return switch (this) {
      MfaType.sms => MfaMethod.sms,
      MfaType.totp => MfaMethod.totp,
    };
  }
}

enum MfaConfiguration {
  @JsonValue('OPTIONAL')
  optional,

  @JsonValue('ON')
  on,

  @JsonValue('OFF')
  off,
}

extension ToMfaEnforcement on MfaConfiguration {
  MfaEnforcement toMfaEnforcement() {
    return switch (this) {
      MfaConfiguration.on => MfaEnforcement.on,
      MfaConfiguration.off => MfaEnforcement.off,
      MfaConfiguration.optional => MfaEnforcement.optional,
    };
  }
}

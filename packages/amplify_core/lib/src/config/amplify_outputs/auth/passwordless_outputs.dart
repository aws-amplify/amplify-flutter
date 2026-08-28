// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.amplify_outputs.passwordless_outputs}
/// Passwordless authentication methods enabled in Amplify outputs.
/// {@endtemplate}
class PasswordlessOutputs
    with AWSEquatable<PasswordlessOutputs>, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.passwordless_outputs}
  const PasswordlessOutputs({
    this.emailOtpEnabled = false,
    this.smsOtpEnabled = false,
    this.webAuthnEnabled = false,
  });

  /// Creates passwordless authentication outputs from [json].
  factory PasswordlessOutputs.fromJson(Map<String, Object?> json) {
    return PasswordlessOutputs(
      emailOtpEnabled: json['email_otp_enabled'] as bool? ?? false,
      smsOtpEnabled: json['sms_otp_enabled'] as bool? ?? false,
      webAuthnEnabled: json['web_authn'] != null,
    );
  }

  /// Whether email one-time passwords are enabled.
  final bool emailOtpEnabled;

  /// Whether SMS one-time passwords are enabled.
  final bool smsOtpEnabled;

  /// Whether WebAuthn is enabled.
  final bool webAuthnEnabled;

  @override
  List<Object?> get props => [emailOtpEnabled, smsOtpEnabled, webAuthnEnabled];

  @override
  String get runtimeTypeName => 'PasswordlessOutputs';
}

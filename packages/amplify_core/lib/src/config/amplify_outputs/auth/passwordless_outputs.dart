// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// Passwordless authentication configuration from Amplify outputs.
class PasswordlessOutputs {
  const PasswordlessOutputs({
    this.emailOtpEnabled = false,
    this.smsOtpEnabled = false,
    this.webAuthnEnabled = false,
    this.preferredChallenge,
  });

  factory PasswordlessOutputs.fromJson(Map<String, Object?> json) {
    return PasswordlessOutputs(
      emailOtpEnabled: json['email_otp_enabled'] as bool? ?? false,
      smsOtpEnabled: json['sms_otp_enabled'] as bool? ?? false,
      webAuthnEnabled: json['web_authn'] != null,
      preferredChallenge: _parseChallenge(
        json['preferred_challenge'] as String?,
      ),
    );
  }

  static AuthFactorType? _parseChallenge(String? value) {
    switch (value) {
      case 'WEB_AUTHN':
        return AuthFactorType.webAuthn;
      case 'EMAIL_OTP':
        return AuthFactorType.emailOtp;
      case 'SMS_OTP':
        return AuthFactorType.smsOtp;
      case 'PASSWORD':
      case 'PASSWORD_SRP':
        return AuthFactorType.password;
      default:
        return null;
    }
  }

  final bool emailOtpEnabled;
  final bool smsOtpEnabled;
  final bool webAuthnEnabled;

  /// The preferred first-factor challenge from the backend config.
  final AuthFactorType? preferredChallenge;

  /// Returns all enabled passwordless methods.
  List<AuthFactorType> get enabledMethods => [
    if (webAuthnEnabled) AuthFactorType.webAuthn,
    if (emailOtpEnabled) AuthFactorType.emailOtp,
    if (smsOtpEnabled) AuthFactorType.smsOtp,
  ];
}

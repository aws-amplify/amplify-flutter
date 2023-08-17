// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_integration_test/src/test_runner.dart';

/// E2E environments with MFA enabled.
///
/// Can be filtered to get environments with a specific configuration.
const mfaEnvironments = MfaEnvironment.values;

/// {@template amplify_auth_integration_test.mfa_environment}
/// A description of an E2E environment with MFA enabled.
/// {@endtemplate}
enum MfaEnvironment implements TestEnvironment {
  /// MFA optional, SMS-only
  mfaOptionalSms(
    environmentName: 'mfa-optional-sms',
    required: false,
    sms: true,
    totp: false,
  ),

  /// MFA required, SMS-only
  mfaRequiredSms(
    environmentName: 'mfa-required-sms',
    required: true,
    sms: true,
    totp: false,
  ),

  /// MFA optional, TOTP-only
  mfaOptionalTotp(
    environmentName: 'mfa-optional-totp',
    required: false,
    sms: false,
    totp: true,
  ),

  /// MFA required, TOTP-only
  mfaRequiredTotp(
    environmentName: 'mfa-required-totp',
    required: true,
    sms: false,
    totp: true,
  ),

  /// MFA optional, SMS + TOTP
  mfaOptionalSmsTotp(
    environmentName: 'mfa-optional-sms-totp',
    required: false,
    sms: true,
    totp: true,
  ),

  /// MFA required, SMS + TOTP
  mfaRequiredSmsTotp(
    environmentName: 'mfa-required-sms-totp',
    required: true,
    sms: true,
    totp: true,
  );

  /// {@macro amplify_auth_integration_test.mfa_environment}
  const MfaEnvironment({
    required this.environmentName,
    required this.required,
    required this.sms,
    required this.totp,
  });

  /// The name of the environment.
  @override
  final String environmentName;

  /// Whether MFA is required (`true`) or optional (`false`).
  final bool required;

  /// Whether SMS MFA is available.
  final bool sms;

  /// Whether TOTP MFA is available.
  final bool totp;
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';

/// A subset of environments with a user pool, used to test common user pool
/// functionality such as sign in, sign up, and confirm sign up.
const List<EnvironmentInfo> userPoolEnvironments = [
  EnvironmentInfo.withGen1Defaults(name: 'main'),
  EnvironmentInfo.withGen1Defaults(name: 'user-pool-only'),
  EnvironmentInfo.withGen1Defaults(name: 'with-client-secret'),
  EnvironmentInfo.withGen2Defaults(name: 'email-sign-in'),
  EnvironmentInfo.withGen2Defaults(
    name: 'phone-sign-in',
    loginMethod: LoginMethod.phone,
    confirmationDeliveryMedium: DeliveryMedium.sms,
    resetPasswordDeliveryMedium: DeliveryMedium.sms,
  ),
];

/// An environment with optional MFA via SMS only.
const mfaOptionalSms = EnvironmentInfo.withGen2Defaults(
  name: 'mfa-optional-sms',
  mfaInfo: MfaInfo(smsEnabled: true, required: false),
);

/// An environment with required MFA via SMS only.
const mfaRequiredSms = EnvironmentInfo.withGen2Defaults(
  name: 'mfa-required-sms',
  mfaInfo: MfaInfo(smsEnabled: true, required: true),
);

/// An environment with optional MFA via TOTP only.
const mfaOptionalTotp = EnvironmentInfo.withGen1Defaults(
  name: 'mfa-optional-totp',
  mfaInfo: MfaInfo(totpEnabled: true, required: false),
);

/// An environment with required MFA via TOTP only.
const mfaRequiredTotp = EnvironmentInfo.withGen1Defaults(
  name: 'mfa-required-totp',
  mfaInfo: MfaInfo(totpEnabled: true, required: true),
);

/// An environment with required MFA via SMS & TOTP.
const mfaOptionalSmsTotp = EnvironmentInfo.withGen1Defaults(
  name: 'mfa-optional-sms-totp',
  mfaInfo: MfaInfo(smsEnabled: true, totpEnabled: true, required: false),
);

/// An environment with required MFA via SMS & TOTP.
const mfaRequiredSmsTotp = EnvironmentInfo.withGen1Defaults(
  name: 'mfa-required-sms-totp',
  mfaInfo: MfaInfo(smsEnabled: true, totpEnabled: true, required: true),
);

/// Environments that support MFA
const List<EnvironmentInfo> mfaEnvironments = [
  mfaOptionalSms,
  mfaRequiredSms,
  mfaOptionalTotp,
  mfaRequiredTotp,
  mfaOptionalSmsTotp,
  mfaRequiredSmsTotp,
];

/// Environments with a user pool and opt-in device tracking.
const List<String> deviceOptInEnvironments = [
  'device-tracking-opt-in',
  'user-pool-only',
  'with-client-secret',
];

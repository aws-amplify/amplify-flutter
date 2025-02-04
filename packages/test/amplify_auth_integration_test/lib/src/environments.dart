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
  EnvironmentInfo.withGen2Defaults(
    name: 'email-sign-in',
    loginMethod: LoginMethod.email,
    confirmationDeliveryMedium: DeliveryMedium.email,
    resetPasswordDeliveryMedium: DeliveryMedium.email,
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

/// An environment with required MFA via Email only.
const mfaRequiredEmail = EnvironmentInfo.withGen2Defaults(
  name: 'mfa-required-email',
  mfaInfo: MfaInfo(emailEnabled: true, required: true),
  loginMethod: LoginMethod.email,
);

/// An environment with optional MFA via Email only.
const mfaOptionalEmail = EnvironmentInfo.withGen2Defaults(
  name: 'mfa-optional-email',
  mfaInfo: MfaInfo(emailEnabled: true, required: false),
  loginMethod: LoginMethod.email,
);

/// An environment with required MFA via Email & SMS.
const mfaRequiredEmailSms = EnvironmentInfo.withGen2Defaults(
  name: 'mfa-required-email-sms',
  mfaInfo: MfaInfo(emailEnabled: true, smsEnabled: true, required: true),
  loginMethod: LoginMethod.email,
);

/// An environment with optional MFA via Email & SMS.
const mfaOptionalEmailSms = EnvironmentInfo.withGen2Defaults(
  name: 'mfa-optional-email-sms',
  mfaInfo: MfaInfo(emailEnabled: true, smsEnabled: true, required: false),
  loginMethod: LoginMethod.email,
);

/// An environment with required MFA via Email & TOTP.
const mfaRequiredEmailTotp = EnvironmentInfo.withGen2Defaults(
  name: 'mfa-required-email-totp',
  mfaInfo: MfaInfo(emailEnabled: true, totpEnabled: true, required: true),
  loginMethod: LoginMethod.email,
);

/// An environment with optional MFA via Email & TOTP.
const mfaOptionalEmailTotp = EnvironmentInfo.withGen2Defaults(
  name: 'mfa-optional-email-totp',
  mfaInfo: MfaInfo(emailEnabled: true, totpEnabled: true, required: false),
  loginMethod: LoginMethod.email,
);

/// An environment with required MFA and username login.
const mfaRequiredUsernameLogin = EnvironmentInfo.withGen2Defaults(
  name: 'username-login-mfa',
  mfaInfo: MfaInfo(totpEnabled: true, emailEnabled: true, required: true),
  loginMethod: LoginMethod.username,
);

/// Environments that support MFA
const List<EnvironmentInfo> mfaEnvironments = [
  mfaOptionalSms,
  mfaRequiredSms,
  mfaOptionalTotp,
  mfaRequiredTotp,
  mfaOptionalSmsTotp,
  mfaRequiredSmsTotp,
  mfaRequiredEmail,
  mfaOptionalEmail,
  mfaRequiredEmailSms,
  mfaOptionalEmailSms,
  mfaRequiredEmailTotp,
  mfaOptionalEmailTotp,
  mfaRequiredUsernameLogin,
];

/// Environments with a user pool and opt-in device tracking.
const List<String> deviceOptInEnvironments = [
  'device-tracking-opt-in',
  'user-pool-only',
  'with-client-secret',
];

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// The MFA preference for an MFA type.
///
/// {@template amplify_core.auth.mfa_preference.selection}
/// If multiple methods are available and no method is preferred,
/// the user will be given the choice to select which MFA type
/// they'd prefer to use when signing in.
/// {@endtemplate}
enum MfaPreference {
  /// The MFA type is disabled and users will no longer be able to use
  /// it during sign-in.
  disabled,

  /// The MFA type is enabled and users will be able to use it during
  /// sign-in.
  ///
  /// {@macro amplify_core.auth.mfa_preference.selection}
  enabled,

  /// The MFA type is enabled and marked as the preferred option when
  /// signing in.
  ///
  /// {@macro amplify_core.auth.mfa_preference.selection}
  preferred,

  /// The MFA type is enabled and unmarked as the preferred option
  /// when signing in.
  ///
  /// {@macro amplify_core.auth.mfa_preference.selection}
  notPreferred,
}

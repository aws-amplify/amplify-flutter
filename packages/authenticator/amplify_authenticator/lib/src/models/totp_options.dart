// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_authenticator.totp_options}
/// Options for configuring the TOTP MFA Experience
/// {@endtemplate}
class TotpOptions {
  /// {@macro amplify_authenticator.totp_options}
  TotpOptions({this.issuer});

  /// The title displayed in a user's TOTP App preceding the
  /// account name.
  ///
  /// In most cases, this should be the name of your app.
  /// For example, if your app is called "My App", your user will see
  /// "My App" - "username" in their TOTP app.
  /// Defaults to the application name retrieved from the project configuration.
  final String? issuer;
}

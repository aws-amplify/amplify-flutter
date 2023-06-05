// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.totp_secret_code}
/// The TOTP secret code and QR code, used to set up an authenticator for
/// TOTP MFA.
/// {@endtemplate}
class TotpSetupResult with AWSEquatable<TotpSetupResult>, AWSDebuggable {
  /// {@macro amplify_core.auth.totp_secret_code}
  const TotpSetupResult({
    required this.username,
    required this.secretCode,
    required this.defaultLabel,
    required this.issuer,
  });

  /// The authenticated user's username.
  final String username;

  /// The secret code.
  final String secretCode;

  /// The default label if not given by the user.
  final String defaultLabel;

  /// The issuer of the TOTP setup request.
  final String issuer;

  /// Creates a URL for setting up an authenticator app.
  ///
  /// This can be used to render a QR code or create a button which opens the URL.
  Uri setupUri({String? label}) => Uri(
        scheme: 'otpauth',
        host: 'totp',
        path: '/${label ?? defaultLabel}:$username',
        queryParameters: {
          'secret': secretCode,
          'issuer': issuer,
        },
      );

  @override
  List<Object?> get props => [username, secretCode, defaultLabel, issuer];

  @override
  String get runtimeTypeName => 'TotpSetupResult';
}

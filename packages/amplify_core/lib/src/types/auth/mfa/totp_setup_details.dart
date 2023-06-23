// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.totp_setup_details}
/// The TOTP secret code and QR code, used to set up an authenticator for
/// TOTP MFA.
/// {@endtemplate}
class TotpSetupDetails
    with
        AWSEquatable<TotpSetupDetails>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.totp_setup_details}
  const TotpSetupDetails({
    required this.sharedSecret,
    required String username,
  }) : _username = username;

  /// {@macro amplify_core.auth.totp_setup_details}
  factory TotpSetupDetails.fromJson(Map<String, Object?> json) {
    return TotpSetupDetails(
      sharedSecret: json['sharedSecret'] as String,
      username: json['username'] as String,
    );
  }

  /// The secret code.
  final String sharedSecret;

  /// The authenticated user's username.
  final String _username;

  /// Gets the URI for setting up an authenticator app which can be used to render
  /// a QR code or create a button which opens the user's authenticator app.
  ///
  /// You must pass your application's name which will be used as a label in the
  /// authenticator app. Optionally, pass an [accountName] which will be set to
  /// the user's username by default.
  Uri getSetupUri({
    required String appName,
    String? accountName,
  }) =>
      Uri(
        scheme: 'otpauth',
        host: 'totp',
        path: '/$appName:${accountName ?? _username}',
        query: _encodeQueryParameters({
          'secret': sharedSecret,
          'issuer': appName,
        }),
      );

  /// Encodes query parameters to match path encoding on non-http URIs
  /// so that Authenticator apps can correctly match the `appName` and
  /// `issuer` when registering a TOTP device.
  ///
  /// See issue: https://github.com/dart-lang/sdk/issues/43838
  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map(
          (e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }

  @override
  List<Object?> get props => [sharedSecret];

  @override
  String get runtimeTypeName => 'TotpSetupDetails';

  @override
  Map<String, Object?> toJson() => {
        'sharedSecret': sharedSecret,
        'username': _username,
      };
}

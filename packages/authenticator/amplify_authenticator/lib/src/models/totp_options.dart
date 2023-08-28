// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_authenticator.totp_options}
/// Options for configuring the TOTP MFA Experience
///
/// ```dart
/// @override
/// Widget build(BuildContext context) {
///   return Authenticator(
///     totpOptions: const TotpOptions(issuer: 'My App'),
///     child: MaterialApp(
///       builder: Authenticator.builder(),
///       home: Scaffold(
///         body: Center(
///           child: Text('You are logged in!'),
///         ),
///       ),
///     ),
///   ),
/// }
/// ```
/// {@endtemplate}
class TotpOptions {
  /// {@macro amplify_authenticator.totp_options}
  const TotpOptions({this.issuer});

  /// The title displayed in a user's TOTP App preceding the
  /// account name.
  ///
  /// In most cases, this should be the name of your app.
  /// For example, if your app is called "My App", your user will see
  /// "My App" - "username" in their TOTP app.
  /// Defaults to the application name retrieved from the project configuration.
  final String? issuer;
}

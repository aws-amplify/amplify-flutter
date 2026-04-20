// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito_dart.auth_plugin_options}
/// The plugin options for the Amplify Auth Cognito plugin.
///
/// Use these options to configure custom headers for all Cognito Auth requests.
/// This is useful for integrating with AWS WAF intelligent threat protection
/// (CAPTCHA, Challenge, Bot Control) or other custom header use cases.
///
/// ## Example
///
/// ```dart
/// final authPlugin = AmplifyAuthCognitoDart(
///   authPluginOptions: AuthPluginOptions(
///     headers: () async => {
///       'x-aws-waf-token': await getWafToken(),
///     },
///   ),
/// );
/// ```
/// {@endtemplate}
@immutable
class AuthPluginOptions with AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.auth_plugin_options}
  const AuthPluginOptions({this.headers});

  /// An optional async function that returns custom headers to be included
  /// in every Cognito Auth HTTP request.
  ///
  /// The headers returned by this function are merged with existing request
  /// headers. If a custom header has the same key as an existing header,
  /// the custom header value takes precedence.
  final Future<Map<String, String>> Function()? headers;

  @override
  String get runtimeTypeName => 'AuthPluginOptions';
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_sign_in_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_in_options}
/// Cognito options for `Amplify.Auth.signIn`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSignInOptions extends SignInOptions
    with AWSEquatable<CognitoSignInOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.model.cognito_sign_in_options}
  const CognitoSignInOptions({this.authFlowType, this.clientMetadata});

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_options}
  factory CognitoSignInOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignInOptionsFromJson(json);

  /// Runtime override of the Authentication flow to use for sign in.
  final AuthenticationFlowType? authFlowType;

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String>? clientMetadata;

  @override
  List<Object?> get props => [authFlowType, clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoSignInOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSignInOptionsToJson(this);
}

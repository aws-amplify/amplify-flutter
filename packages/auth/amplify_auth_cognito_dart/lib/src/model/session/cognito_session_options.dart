// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_session_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_session_options}
/// Cognito options for `Amplify.Auth.fetchAuthSession`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSessionOptions extends AuthSessionOptions
    with AWSEquatable<CognitoSessionOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.model.cognito_session_options}
  const CognitoSessionOptions({
    this.getAWSCredentials = false,
    super.forceRefresh = false,
  });

  /// {@macro amplify_auth_cognito.model.cognito_session_options}
  factory CognitoSessionOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSessionOptionsFromJson(json);

  /// Whether to retrieve AWS credentials as part of the session fetching.
  ///
  /// If no AWS credentials are currently present, and this is `true`, a new
  /// set of temporary credentials will be requested using the registered
  /// Cognito Identity Pool.
  ///
  /// Defaults to `false`.
  final bool getAWSCredentials;

  @override
  List<Object?> get props => [getAWSCredentials, forceRefresh];

  @override
  String get runtimeTypeName => 'CognitoSessionOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSessionOptionsToJson(this);
}

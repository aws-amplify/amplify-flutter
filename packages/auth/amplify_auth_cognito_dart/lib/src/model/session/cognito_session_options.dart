// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_session_options.g.dart';

const _getAWSCredentialsDeprecation = '`getAWSCredentials` is ignored. AWS '
    'Credentials will always be retrieved. `credentialsResult` will contain '
    'the result of retrieving credentials, which may be an error';

/// {@template amplify_auth_cognito.model.cognito_session_options}
/// Cognito options for `Amplify.Auth.fetchAuthSession`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSessionOptions extends AuthSessionOptions
    with AWSEquatable<CognitoSessionOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.model.cognito_session_options}
  const CognitoSessionOptions({
    // ignore: avoid_unused_constructor_parameters
    @Deprecated(_getAWSCredentialsDeprecation) bool? getAWSCredentials = false,
    super.forceRefresh = false,
  });

  /// {@macro amplify_auth_cognito.model.cognito_session_options}
  factory CognitoSessionOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSessionOptionsFromJson(json);

  @override
  List<Object?> get props => [forceRefresh];

  @override
  String get runtimeTypeName => 'CognitoSessionOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSessionOptionsToJson(this);
}

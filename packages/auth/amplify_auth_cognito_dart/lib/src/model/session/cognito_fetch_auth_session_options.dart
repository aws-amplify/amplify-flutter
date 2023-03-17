// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_fetch_auth_session_options.g.dart';

const _deprecatedMessage = 'Use FetchAuthSessionOptions instead.';

const _getAWSCredentialsDeprecation = '`getAWSCredentials` is ignored. AWS '
    'Credentials will always be retrieved. `credentialsResult` will contain '
    'the result of retrieving credentials, which may be an error';

/// {@macro amplify_auth_cognito.model.cognito_fetch_auth_session_options}
@Deprecated('Use CognitoFetchAuthSessionOptions instead')
// ignore: deprecated_member_use_from_same_package
typedef CognitoSessionOptions = CognitoFetchAuthSessionOptions;

/// {@template amplify_auth_cognito.model.cognito_fetch_auth_session_options}
/// Cognito options for `Amplify.Auth.fetchAuthSession`.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoFetchAuthSessionOptions extends FetchAuthSessionOptions {
  /// {@macro amplify_auth_cognito.model.cognito_fetch_auth_session_options}
  @Deprecated(_deprecatedMessage)
  const CognitoFetchAuthSessionOptions({
    // ignore: avoid_unused_constructor_parameters
    @Deprecated(_getAWSCredentialsDeprecation) bool? getAWSCredentials = false,
    super.forceRefresh = false,
  });

  /// {@macro amplify_auth_cognito.model.cognito_fetch_auth_session_options}
  @Deprecated(_deprecatedMessage)
  factory CognitoFetchAuthSessionOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoFetchAuthSessionOptionsFromJson(json);

  @override
  FetchAuthSessionPluginOptions? get pluginOptions => null;

  @override
  String get runtimeTypeName => 'CognitoFetchAuthSessionOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoFetchAuthSessionOptionsToJson(this);
}

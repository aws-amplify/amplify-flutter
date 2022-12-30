// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_update_password_options.g.dart';

/// {@template amplify_auth_cognito.cognito_update_password_options}
/// Cognito extension of update password options to add the
/// platform-specific fields.
/// {@endtemplate}
@zAmplifySerializable
class CognitoUpdatePasswordOptions extends UpdatePasswordOptions
    with AWSEquatable<CognitoUpdatePasswordOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.cognito_update_password_options}
  const CognitoUpdatePasswordOptions({this.clientMetadata});

  /// {@macro amplify_auth_cognito.cognito_update_password_options}
  factory CognitoUpdatePasswordOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoUpdatePasswordOptionsFromJson(json);

  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  final Map<String, String>? clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoUpdatePasswordOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoUpdatePasswordOptionsToJson(this);
}

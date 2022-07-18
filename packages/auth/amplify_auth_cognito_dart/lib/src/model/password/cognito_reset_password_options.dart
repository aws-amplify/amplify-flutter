/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';

part 'cognito_reset_password_options.g.dart';

/// {@template amplify_auth_cognito.cognito_reset_password_options}
/// Cognito extension of [ResetPasswordOptions] to add the
/// platform-specific fields.
///
/// Can be used to add [clientMetadata] to the operation.
/// {@endtemplate}
@zAmplifySerializable
class CognitoResetPasswordOptions extends ResetPasswordOptions
    with AWSEquatable<CognitoResetPasswordOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.cognito_reset_password_options}
  const CognitoResetPasswordOptions({this.clientMetadata});

  /// {@macro amplify_auth_cognito.cognito_reset_password_options}
  factory CognitoResetPasswordOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoResetPasswordOptionsFromJson(json);

  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  final Map<String, String>? clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoResetPasswordOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoResetPasswordOptionsToJson(this);
}

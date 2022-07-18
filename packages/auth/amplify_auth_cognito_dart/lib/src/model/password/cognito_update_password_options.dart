/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

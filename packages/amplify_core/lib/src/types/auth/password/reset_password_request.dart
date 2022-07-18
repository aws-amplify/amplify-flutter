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

part 'reset_password_request.g.dart';

/// {@template amplify_core.reset_password_request}
/// Encapsulates parameters for a reset password request.
/// {@endtemplate}
@zAmplifyGenericSerializable
class ResetPasswordRequest<Options extends ResetPasswordOptions>
    with
        AWSEquatable<ResetPasswordRequest<ResetPasswordOptions>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.reset_password_request}
  const ResetPasswordRequest({required this.username, this.options});

  factory ResetPasswordRequest.fromJson(
    Map<String, Object?> json,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$ResetPasswordRequestFromJson(
        json,
        (json) => fromJsonOptions((json as Map).cast()),
      );

  /// A login identifier or an email/phone number, depending on configuration.
  final String username;

  /// Plugin-specific, advanced options such as information about the client.
  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [username, options];

  @override
  String get runtimeTypeName => 'ResetPasswordRequest';

  @override
  Map<String, Object?> toJson() => _$ResetPasswordRequestToJson(
        this,
        (Options options) => options.toJson(),
      );
}

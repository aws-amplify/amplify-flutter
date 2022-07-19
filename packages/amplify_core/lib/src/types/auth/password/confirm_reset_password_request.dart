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

part 'confirm_reset_password_request.g.dart';

/// {@template amplify_core.confirm_reset_password_request}
/// Encapsulates parameters for a confirm reset password request.
/// {@endtemplate}
@zAmplifyGenericSerializable
class ConfirmResetPasswordRequest<Options extends ConfirmResetPasswordOptions>
    with
        // TODO(dnys1): https://github.com/dart-lang/sdk/issues/49484
        AWSEquatable<ConfirmResetPasswordRequest<Options>>,
        AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.confirm_reset_password_request}
  const ConfirmResetPasswordRequest({
    required this.username,
    required this.newPassword,
    required this.confirmationCode,
    this.options,
  });

  factory ConfirmResetPasswordRequest.fromJson(
    Map<String, Object?> json,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$ConfirmResetPasswordRequestFromJson(
        json,
        (json) => fromJsonOptions((json as Map).cast()),
      );

  /// A login identifier or an email/phone number, depending on configuration
  final String username;

  /// The user's desired new password
  final String newPassword;

  /// The confirmation code the user received after starting the reset password process
  final String confirmationCode;

  /// Plugin-specific, advanced options such as information about the client
  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [
        username,
        newPassword,
        confirmationCode,
        options,
      ];

  @override
  Map<String, Object?> toJson() => _$ConfirmResetPasswordRequestToJson(
        this,
        (Options options) => options.toJson(),
      );
}

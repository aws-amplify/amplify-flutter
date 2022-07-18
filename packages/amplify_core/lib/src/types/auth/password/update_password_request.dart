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

part 'update_password_request.g.dart';

/// {@template amplify_core.update_password_request}
/// Encapsulates parameters for an update password request
/// {@endtemplate}
@zAmplifyGenericSerializable
class UpdatePasswordRequest<Options extends UpdatePasswordOptions>
    with
        AWSEquatable<UpdatePasswordRequest<UpdatePasswordOptions>>,
        AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.update_password_request}
  const UpdatePasswordRequest({
    required this.newPassword,
    required this.oldPassword,
    this.options,
  });

  factory UpdatePasswordRequest.fromJson(
    Map<String, Object?> json,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$UpdatePasswordRequestFromJson(
        json,
        (json) => fromJsonOptions((json as Map).cast()),
      );

  /// The user's desired new password
  final String newPassword;

  /// The user's current password
  final String oldPassword;

  /// Plugin-specific, advanced options such as information about the client
  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [newPassword, oldPassword, options];

  @override
  Map<String, Object?> toJson() => _$UpdatePasswordRequestToJson(
        this,
        (Options options) => options.toJson(),
      );
}

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

part 'confirm_user_attribute_request.g.dart';

/// {@template amplify_core.confirm_user_attribute_request}
/// Encapsulates parameters for a request to confirm a user attribute update.
/// {@endtemplate}
@zAmplifyGenericSerializable
class ConfirmUserAttributeRequest<Key extends UserAttributeKey>
    with
        AWSEquatable<ConfirmUserAttributeRequest<UserAttributeKey>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.confirm_user_attribute_request}
  const ConfirmUserAttributeRequest({
    required this.userAttributeKey,
    required this.confirmationCode,
  });

  /// {@macro amplify_core.confirm_user_attribute_request}
  factory ConfirmUserAttributeRequest.fromJson(
    Map<String, Object?> json,
    Key Function(String) fromJsonKey,
  ) =>
      _$ConfirmUserAttributeRequestFromJson(
        json,
        (json) => fromJsonKey(json as String),
      );

  /// The key of the user attribute to update.
  final Key userAttributeKey;

  /// The confirmation code the user received after starting the user attribute
  /// operation.
  final String confirmationCode;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [userAttributeKey, confirmationCode];

  @override
  String get runtimeTypeName => 'ConfirmUserAttributeRequest';

  @override
  Map<String, Object?> toJson() => _$ConfirmUserAttributeRequestToJson(
        this,
        (Key key) => key.toJson(),
      );
}

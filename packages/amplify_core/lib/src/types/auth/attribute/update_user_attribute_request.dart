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
import 'package:json_annotation/json_annotation.dart';

part 'update_user_attribute_request.g.dart';

/// {@template amplify_core.update_user_attribute_request}
/// Encapsulates parameters for a update user attribute operation.
/// {@endtemplate}
@JsonSerializable(
  genericArgumentFactories: true,
  includeIfNull: false,
  explicitToJson: true,
  constructor: '_',
)
class UpdateUserAttributeRequest<Key extends UserAttributeKey,
        Options extends UpdateUserAttributeOptions>
    with
        AWSEquatable<UpdateUserAttributeRequest<Key, Options>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.update_user_attribute_request}
  factory UpdateUserAttributeRequest({
    required Key userAttributeKey,
    required String value,
    Options? options,
  }) =>
      UpdateUserAttributeRequest._(
        attribute: AuthUserAttribute(
          userAttributeKey: userAttributeKey,
          value: value,
        ),
        options: options,
      );

  const UpdateUserAttributeRequest._({
    required this.attribute,
    this.options,
  });

  factory UpdateUserAttributeRequest.fromJson(
    Map<String, Object?> json,
    Key Function(String) fromJsonKey,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$UpdateUserAttributeRequestFromJson(
        json,
        (key) => fromJsonKey(key as String),
        (json) => fromJsonOptions((json as Map).cast()),
      );

  /// The user attribute to update
  final AuthUserAttribute<Key> attribute;

  /// Plugin-specific, advanced options such as information about the client
  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [attribute, options];

  @override
  String get runtimeTypeName => 'UpdateUserAttributeRequest';

  @override
  Map<String, Object?> toJson() => _$UpdateUserAttributeRequestToJson(
        this,
        (Key key) => key.toJson(),
        (Options options) => options.toJson(),
      );
}

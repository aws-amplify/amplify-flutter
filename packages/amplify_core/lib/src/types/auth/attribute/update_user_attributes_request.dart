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

part 'update_user_attributes_request.g.dart';

/// {@template amplify_core.update_user_attributes_request}
/// Encapsulates parameters for a update user attributes operation.
/// {@endtemplate}
@zAmplifyGenericSerializable
class UpdateUserAttributesRequest<Key extends AuthUserAttributeKey,
        Options extends UpdateUserAttributesOptions>
    with
        // TODO(dnys1): https://github.com/dart-lang/sdk/issues/49484
        AWSEquatable<UpdateUserAttributesRequest<Key, Options>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.update_user_attributes_request}
  const UpdateUserAttributesRequest({
    required this.attributes,
    this.options,
  });

  /// {@macro amplify_core.update_user_attributes_request}
  factory UpdateUserAttributesRequest.fromJson(
    Map<String, Object?> json,
    Key Function(String) fromJsonKey,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$UpdateUserAttributesRequestFromJson(
        json,
        (key) => fromJsonKey(key as String),
        (json) => fromJsonOptions((json as Map).cast()),
      );

  /// The list of user attribute to update
  final List<AuthUserAttribute<Key>> attributes;

  /// Plugin-specific, advanced options such as information about the client
  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [attributes, options];

  @override
  String get runtimeTypeName => 'UpdateUserAttributesRequest';

  @override
  Map<String, Object?> toJson() => _$UpdateUserAttributesRequestToJson(
        this,
        (Key key) => key.toJson(),
        (Options options) => options.toJson(),
      );
}

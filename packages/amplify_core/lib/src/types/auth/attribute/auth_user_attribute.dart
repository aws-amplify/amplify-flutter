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

part 'auth_user_attribute.g.dart';

/// {@template amplify_core.auth.auth_user_attribute}
/// The key and value for a user attribute.
/// {@endtemplate}
@zAmplifyGenericSerializable
class AuthUserAttribute<Key extends UserAttributeKey>
    with
        AWSEquatable<AuthUserAttribute<UserAttributeKey>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.auth_user_attribute}
  const AuthUserAttribute({
    required this.userAttributeKey,
    required this.value,
  });

  /// {@macro amplify_core.auth.auth_user_attribute}
  factory AuthUserAttribute.fromJson(
    Map<String, Object?> json,
    Key Function(Object?) fromJsonKey,
  ) =>
      _$AuthUserAttributeFromJson(
        json,
        (key) => fromJsonKey(key as String),
      );

  final Key userAttributeKey;
  final String value;

  @override
  List<Object> get props => [userAttributeKey, value];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  String get runtimeTypeName => 'AuthUserAttribute';

  @override
  Map<String, Object?> toJson() => _$AuthUserAttributeToJson(
        this,
        (Key key) => key.toJson(),
      );
}

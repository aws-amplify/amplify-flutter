// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'auth_user_attribute.g.dart';

/// {@template amplify_core.auth.auth_user_attribute}
/// The key and value for a user attribute.
/// {@endtemplate}
@zAmplifyGenericSerializable
class AuthUserAttribute<Key extends AuthUserAttributeKey>
    with
        // TODO(dnys1): https://github.com/dart-lang/sdk/issues/49484
        AWSEquatable<AuthUserAttribute<Key>>,
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

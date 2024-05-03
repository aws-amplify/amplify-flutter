// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'auth_user_attribute.g.dart';

/// {@category Auth}
/// {@template amplify_core.auth.auth_user_attribute}
/// The key and value for a user attribute.
/// {@endtemplate}
@zAmplifySerializable
class AuthUserAttribute
    with
        AWSEquatable<AuthUserAttribute>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.auth_user_attribute}
  const AuthUserAttribute({
    required this.userAttributeKey,
    required this.value,
  });

  /// {@macro amplify_core.auth.auth_user_attribute}
  factory AuthUserAttribute.fromJson(Map<String, Object?> json) =>
      _$AuthUserAttributeFromJson(json);

  final AuthUserAttributeKey userAttributeKey;
  final String value;

  @override
  List<Object> get props => [userAttributeKey, value];

  @override
  String get runtimeTypeName => 'AuthUserAttribute';

  @override
  Map<String, Object?> toJson() => _$AuthUserAttributeToJson(this);
}

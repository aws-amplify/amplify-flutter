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

part 'auth_user.g.dart';

@amplifySerializable
class AuthUser
    with
        AWSEquatable<AuthUser>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const AuthUser({
    required this.userId,
    required this.username,
  });

  factory AuthUser.fromJson(Map<String, Object?> json) =>
      _$AuthUserFromJson(json);

  final String userId;
  final String username;

  @override
  List<Object?> get props => [userId, username];

  @override
  String get runtimeTypeName => 'AuthUser';

  @override
  Map<String, Object?> toJson() => _$AuthUserToJson(this);
}

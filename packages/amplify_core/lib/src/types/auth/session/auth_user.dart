// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'auth_user.g.dart';

@zAmplifyGenericSerializable
class AuthUser<Details extends SignInDetails>
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const AuthUser({
    required this.userId,
    required this.username,
    required this.signInDetails,
  });

  factory AuthUser.fromJson(
    Map<String, Object?> json,
    Details Function(Map<String, Object?>) fromJsonSignInDetails,
  ) =>
      _$AuthUserFromJson(
        json,
        (json) => fromJsonSignInDetails((json as Map).cast()),
      );

  final String userId;
  final String username;
  final Details signInDetails;

  @override
  String get runtimeTypeName => 'AuthUser';

  @override
  Map<String, Object?> toJson() => _$AuthUserToJson(
        this,
        (Details details) => details.toJson(),
      );
}

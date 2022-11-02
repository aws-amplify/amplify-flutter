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

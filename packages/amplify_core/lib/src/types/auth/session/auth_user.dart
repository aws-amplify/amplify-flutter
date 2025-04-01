// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
class AuthUser with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const AuthUser({
    required this.userId,
    required this.username,
    required this.signInDetails,
  });

  final String userId;
  final String username;
  final SignInDetails signInDetails;

  @override
  String get runtimeTypeName => 'AuthUser';

  @override
  Map<String, Object?> toJson() => {
        'userId': userId,
        'username': username,
        'signInDetails': signInDetails.toJson(),
      };
}

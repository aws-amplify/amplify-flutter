// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_auth_user.g.dart';

/// {@template amplify_auth_cognito_dart.cognito_auth_user}
/// A Cognito user, including details of how they signed in.
/// {@endtemplate}
@zAmplifySerializable
class CognitoAuthUser with AWSEquatable<CognitoAuthUser> implements AuthUser {
  /// {@macro amplify_auth_cognito_dart.cognito_auth_user}
  const CognitoAuthUser({
    required this.userId,
    required this.username,
    required this.signInDetails,
  });

  /// {@macro amplify_auth_cognito_dart.cognito_auth_user}
  factory CognitoAuthUser.fromJson(Map<String, Object?> json) =>
      _$CognitoAuthUserFromJson(json);

  @override
  final String userId;

  @override
  final String username;

  @override
  final CognitoSignInDetails signInDetails;

  @override
  List<Object?> get props => [userId, username, signInDetails];

  @override
  String get runtimeTypeName => 'CognitoAuthUser';

  @override
  Map<String, Object?> toJson() => _$CognitoAuthUserToJson(this);
}

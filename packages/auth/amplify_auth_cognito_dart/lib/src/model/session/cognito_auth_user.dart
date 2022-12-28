// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_auth_user.g.dart';

/// {@template amplify_auth_cognito_dart.cognito_auth_user}
/// A Cognito user, including details of how they signed in.
/// {@endtemplate}
@zAmplifySerializable
class CognitoAuthUser extends AuthUser<CognitoSignInDetails>
    with AWSEquatable<CognitoAuthUser>, AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.cognito_auth_user}
  const CognitoAuthUser({
    required super.username,
    required super.userId,
    required super.signInDetails,
  });

  /// {@macro amplify_auth_cognito_dart.cognito_auth_user}
  factory CognitoAuthUser.fromJson(Map<String, Object?> json) =>
      _$CognitoAuthUserFromJson(json);

  @override
  List<Object?> get props => [userId, username, signInDetails];

  @override
  String get runtimeTypeName => 'CognitoAuthUser';

  @override
  Map<String, Object?> toJson() => _$CognitoAuthUserToJson(this);
}

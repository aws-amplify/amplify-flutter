// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_auth_session.g.dart';

/// {@template amplify_auth_cognito.model.cognito_auth_session}
/// The current Cognito auth session, with AWS credentials and User Pool tokens
/// of the active user.
/// {@endtemplate}
@zAmplifySerializable
class CognitoAuthSession extends AuthSession
    with
        AWSEquatable<CognitoAuthSession>,
        AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_auth_cognito.model.cognito_auth_session}
  const CognitoAuthSession({
    required super.isSignedIn,
    this.credentials,
    this.userPoolTokens,
    this.userSub,
    this.identityId,
  });

  /// {@macro amplify_auth_cognito.model.cognito_auth_session}
  factory CognitoAuthSession.fromJson(Map<String, Object?> json) =>
      _$CognitoAuthSessionFromJson(json);

  /// The AWS credentials.
  final AWSCredentials? credentials;

  /// The User Pool tokens.
  final CognitoUserPoolTokens? userPoolTokens;

  /// The user ID (subject).
  final String? userSub;

  /// The AWS identity ID.
  final String? identityId;

  @override
  List<Object?> get props => [
        credentials,
        userPoolTokens,
        userSub,
        identityId,
      ];

  @override
  Map<String, Object?> toJson() => _$CognitoAuthSessionToJson(this);
}

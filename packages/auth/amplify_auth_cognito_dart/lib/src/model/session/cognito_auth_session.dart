// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_result.dart';
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
    required this.userPoolTokensResult,
    required this.userSubResult,
    required this.credentialsResult,
    required this.identityIdResult,
  });

  /// The User Pool tokens.
  final AuthResult<CognitoUserPoolTokens> userPoolTokensResult;

  /// The user ID (subject).
  final AuthResult<String> userSubResult;

  /// The AWS credentials.
  final AuthResult<AWSCredentials> credentialsResult;

  /// The AWS identity ID.
  final AuthResult<String> identityIdResult;

  @override
  List<Object?> get props => [
        userPoolTokensResult,
        userSubResult,
        credentialsResult,
        identityIdResult,
      ];

  @override
  Map<String, Object?> toJson() => _$CognitoAuthSessionToJson(this);
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_auth_session_result.dart';
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
    CognitoAuthSessionResult<AWSCredentials>? credentialsResult,
    CognitoAuthSessionResult<CognitoUserPoolTokens>? userPoolTokensResult,
    CognitoAuthSessionResult<String>? identityIdResult,
  })  : _credentialsResult = credentialsResult,
        _userPoolTokensResult = userPoolTokensResult,
        _identityIdResult = identityIdResult;

  final CognitoAuthSessionResult<AWSCredentials>? _credentialsResult;
  final CognitoAuthSessionResult<CognitoUserPoolTokens>? _userPoolTokensResult;
  final CognitoAuthSessionResult<String>? _identityIdResult;

  /// The AWS credentials.
  AWSCredentials? get credentials => _credentialsResult?.value;

  /// The User Pool tokens.
  CognitoUserPoolTokens? get userPoolTokens => _userPoolTokensResult?.value;

  /// The user ID (subject).
  String? get userSub => _userPoolTokensResult?.value?.userId;

  /// The AWS identity ID.
  String? get identityId => _identityIdResult?.value;

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

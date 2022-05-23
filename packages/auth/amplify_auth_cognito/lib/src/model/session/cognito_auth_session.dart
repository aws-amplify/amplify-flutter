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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.model.cognito_auth_session}
/// The current Cognito auth session, with AWS credentials and User Pool tokens
/// of the active user.
/// {@endtemplate}
class CognitoAuthSession extends AuthSession
    with AWSEquatable<CognitoAuthSession> {
  /// {@macro amplify_auth_cognito.model.cognito_auth_session}
  const CognitoAuthSession({
    required super.isSignedIn,
    this.credentials,
    this.userPoolTokens,
    this.userSub,
    this.identityId,
  });

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
}

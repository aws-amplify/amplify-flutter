// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_connect_client.connect_credentials}
/// The AWS credentials and Cognito identity needed to sign and route Customer
/// Profiles requests.
/// {@endtemplate}
@immutable
class ConnectCredentials {
  /// {@macro amplify_connect_client.connect_credentials}
  const ConnectCredentials({
    required this.awsCredentials,
    required this.cognitoUserId,
  });

  /// Temporary AWS credentials from the Cognito Identity Pool used to sign
  /// requests with SigV4.
  final AWSCredentials awsCredentials;

  /// The Cognito user's `sub`, used as the profile routing key
  /// (`cognitoUserKey`) and the `CognitoUserId` attribute.
  final String cognitoUserId;
}

/// {@template amplify_connect_client.connect_credentials_provider}
/// Resolves [ConnectCredentials] for the current signed-in user.
///
/// The Flutter wrapper implements this against `Amplify.Auth.fetchAuthSession`.
/// Implementations should throw a `ConnectNotSignedInException` when no user
/// is signed in.
/// {@endtemplate}
abstract interface class ConnectCredentialsProvider {
  /// Resolves the credentials and Cognito identity for the current user.
  Future<ConnectCredentials> fetchCredentials();
}

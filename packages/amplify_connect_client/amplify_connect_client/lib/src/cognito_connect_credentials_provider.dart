// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

/// {@template amplify_connect_client.cognito_connect_credentials_provider}
/// A [ConnectCredentialsProvider] backed by Amplify Auth (Cognito).
///
/// Resolves temporary AWS credentials and the Cognito `sub` from
/// `Amplify.Auth.fetchAuthSession`. Throws [ConnectNotSignedInException] when
/// no user is signed in.
/// {@endtemplate}
class CognitoConnectCredentialsProvider implements ConnectCredentialsProvider {
  /// {@macro amplify_connect_client.cognito_connect_credentials_provider}
  const CognitoConnectCredentialsProvider();

  @override
  Future<ConnectCredentials> fetchCredentials() async {
    try {
      final session = await Amplify.Auth.fetchAuthSession();
      if (session is! CognitoAuthSession || !session.isSignedIn) {
        throw const ConnectNotSignedInException();
      }
      final credentials = session.credentialsResult.value;
      final user = await Amplify.Auth.getCurrentUser();
      return ConnectCredentials(
        awsCredentials: credentials,
        cognitoUserId: user.userId,
      );
    } on ConnectClientException {
      rethrow;
    } on Exception catch (e) {
      throw ConnectNotSignedInException(cause: e);
    }
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

/// {@template amplify_connect_client.cognito_connect_credentials_provider}
/// A [ConnectCredentialsProvider] backed by Amplify Auth (Cognito).
///
/// Resolves the session from `Amplify.Auth.fetchAuthSession`:
///  - When a user-pool access token is present, an authenticated
///    [ConnectSession] is returned (the client uses the bearer route).
///  - Otherwise, when guest Identity Pool credentials are present, a guest
///    [ConnectSession] is returned (the client uses the SigV4 route).
///  - When neither is available, [ConnectNotSignedInException] is thrown.
/// {@endtemplate}
class CognitoConnectCredentialsProvider implements ConnectCredentialsProvider {
  /// {@macro amplify_connect_client.cognito_connect_credentials_provider}
  const CognitoConnectCredentialsProvider();

  @override
  Future<ConnectSession> fetchSession() async {
    try {
      final session = await Amplify.Auth.fetchAuthSession();
      if (session is! CognitoAuthSession) {
        throw const ConnectNotSignedInException();
      }
      final accessToken =
          session.userPoolTokensResult.valueOrNull?.accessToken.raw;
      final credentials = session.credentialsResult.valueOrNull;
      final identityId = session.identityIdResult.valueOrNull;

      if (accessToken == null && credentials == null) {
        throw const ConnectNotSignedInException();
      }
      return ConnectSession(
        accessToken: accessToken,
        credentials: credentials,
        identityId: identityId,
      );
    } on ConnectClientException {
      rethrow;
    } on Exception catch (e) {
      throw ConnectNotSignedInException(cause: e);
    }
  }
}

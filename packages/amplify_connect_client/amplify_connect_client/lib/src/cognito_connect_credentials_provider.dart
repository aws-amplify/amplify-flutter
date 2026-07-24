// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

/// {@template amplify_connect_client.cognito_connect_credentials_provider}
/// A [ConnectCredentialsProvider] backed by Amplify Auth (Cognito).
///
/// Resolves the Identity Pool AWS credentials from
/// `Amplify.Auth.fetchAuthSession` — the same single signed path works for
/// authenticated users and guests. Throws [ConnectNotSignedInException] when no
/// credentials are available.
/// {@endtemplate}
class CognitoConnectCredentialsProvider implements ConnectCredentialsProvider {
  /// {@macro amplify_connect_client.cognito_connect_credentials_provider}
  const CognitoConnectCredentialsProvider();

  @override
  Future<AWSCredentials> fetchCredentials() async {
    try {
      final session = await Amplify.Auth.fetchAuthSession();
      if (session is! CognitoAuthSession) {
        throw const ConnectNotSignedInException();
      }
      final credentials = session.credentialsResult.valueOrNull;
      if (credentials == null) {
        throw const ConnectNotSignedInException();
      }
      return credentials;
    } on ConnectClientException {
      rethrow;
    } on Exception catch (e) {
      throw ConnectNotSignedInException(cause: e);
    }
  }
}

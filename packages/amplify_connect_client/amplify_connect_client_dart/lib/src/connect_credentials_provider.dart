// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_connect_client.connect_session}
/// The resolved auth material used to authorize an identify request.
///
/// Exactly one path applies:
///  - Authenticated: [accessToken] is non-null. The authed route is used with
///    `Authorization: Bearer <accessToken>`.
///  - Guest: [accessToken] is null but [credentials] are present. The guest
///    route is used, SigV4-signed (`execute-api`) with those credentials.
/// {@endtemplate}
@immutable
class ConnectSession {
  /// {@macro amplify_connect_client.connect_session}
  const ConnectSession({this.accessToken, this.credentials, this.identityId});

  /// The Cognito user-pool access token, or null for a guest session.
  final String? accessToken;

  /// The Identity Pool AWS credentials, present for signing the guest route.
  final AWSCredentials? credentials;

  /// The Identity Pool `identityId`, if available.
  final String? identityId;

  /// Whether an authenticated access token is present.
  bool get isAuthenticated => accessToken != null;
}

/// {@template amplify_connect_client.connect_credentials_provider}
/// Resolves a [ConnectSession] for the current caller.
///
/// The Flutter wrapper implements this against `Amplify.Auth.fetchAuthSession`.
/// {@endtemplate}
abstract interface class ConnectCredentialsProvider {
  /// Resolves the auth material for the current caller.
  Future<ConnectSession> fetchSession();
}

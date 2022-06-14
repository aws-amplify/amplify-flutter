// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/credentials/credentials.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_exception.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

/// {@template amplify_auth_cognito.credentialed_client}
/// HTTP client which handles making authorized requests and automatically
/// refreshes access tokens when expired.
/// {@endtemplate}
@internal
class CredentialedClient extends http.BaseClient {
  /// {@macro amplify_auth_cognito.credentialed_client}
  CredentialedClient({
    required this.credentials,
    required String clientId,
    http.Client? httpClient,
  }) : _oauthClient = oauth2.Client(
          credentials,
          identifier: clientId,
          httpClient: httpClient,
        );

  /// Base HTTP client which handles automatic token refreshing and injection
  /// of credentials into HTTP headers.
  final oauth2.Client _oauthClient;

  /// The authorized credentials for this client, including the
  /// access and refresh tokens and relevant metadata.
  final Credentials credentials;

  @override
  Future<http.StreamedResponse> send(
    http.BaseRequest request, {
    int retries = 1,
  }) async {
    while (true) {
      try {
        return await _oauthClient.send(request);
      } on oauth2.AuthorizationException catch (e) {
        if (retries > 0) {
          retries--;
          // TODO(dnys1): Log
          safePrint('Could not refresh tokens. Retrying...');
          continue;
        }
        // TODO(dnys1): Log
        safePrint('Request returned 401. Logging out...');
        await Amplify.Auth.signOut();
        throw NotAuthorizedException(e.error);
      }
    }
  }
}

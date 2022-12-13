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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_dart/src/util/credentials_providers.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Zone tag for whether we're calling from inside the fetch auth session
/// machine, in which case we should *not* initiate a new fetch (since that
/// would cause a stack overflow, in essence).
@internal
const zInFetch = #_zInFetch;

/// {@template amplify_auth_cognito.credentials.auth_plugin_credentials_provider}
/// The AWS credentials provider for the Auth plugin.
/// {@endtemplate}
///
/// Implementations should extend this class so that service location works
/// correctly.
abstract class AuthPluginCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro amplify_auth_cognito.credentials.auth_plugin_credentials_provider}
  const AuthPluginCredentialsProvider(this.dependencyManager);

  /// The dependency manager token for [AuthPluginCredentialsProvider].
  static const token = Token<AuthPluginCredentialsProvider>([
    Token<DependencyManager>(),
  ]);

  /// The registered dependency manager.
  final DependencyManager dependencyManager;
}

/// {@template amplify_auth_cognito.credentials.auth_plugin_credentials_provider_impl}
/// {@macro amplify_auth_cognito.credentials.auth_plugin_credentials_provider}
///
/// SDK calls made within the Auth plugin require a mechanism for retrieving
/// credentials to sign their requests. For the Auth plugin, those credentials
/// are stored in secure storage and managed via the
/// [FetchAuthSessionStateMachine]. Here we create an [AWSCredentialsProvider]
/// which can retrieve those stored credentials for SDK clients.
/// {@endtemplate}
@internal
class AuthPluginCredentialsProviderImpl extends AuthPluginCredentialsProvider {
  /// {@macro amplify_auth_cognito.credentials.auth_plugin_credentials_provider_impl}
  const AuthPluginCredentialsProviderImpl(super.dependencyManager);

  CognitoAuthStateMachine get _dispatcher => dependencyManager.expect();

  @override
  Future<AWSCredentials> retrieve() async {
    // Whether this call originated from inside the fetch state machine.
    final inFetch = (Zone.current[zInFetch] as bool?) ?? false;

    // If a call is made while credentials are being fetched, then we cannot
    // initiate another fetchAuthSession call and we must assume that any
    // cached credentials (if there are any) are invalid, so including them
    // in the request will do no good.
    if (inFetch) {
      return const AnonymousCredentialsProvider().retrieve();
    }

    // Fetch AWS credentials but do not retrieve them if they have not already
    // been retrieved once via other mechanisms. That is, get cached credentials
    // or refresh existing ones if needed, but do not initiate an
    // unauthenticated session since that should be handled via an explicit call
    // to `fetchAuthSession`.
    final session = await _dispatcher.loadSession(
      const FetchAuthSessionEvent.fetch(
        CognitoSessionOptions(getAWSCredentials: false),
      ),
    );
    final fetchedCredentials = session.credentials;
    if (fetchedCredentials == null) {
      throw const InvalidStateException('Could not retrieve AWS credentials');
    }
    return fetchedCredentials;
  }
}

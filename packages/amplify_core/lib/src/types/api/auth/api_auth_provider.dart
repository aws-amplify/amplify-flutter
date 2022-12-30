// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// Handles the retrieval of authentication tokens for third-party providers.
///
/// Users should subclass one of:
/// - [OIDCAuthProvider]: Handles OIDC authorization
/// - [FunctionAuthProvider]: Handles Custom Function authorization
///
/// For more information about the different authorization modes, see the
/// [docs](https://docs.amplify.aws/cli/graphql-transformer/auth).
abstract class APIAuthProvider {
  /// The authorization type of this provider.
  final APIAuthorizationType type;

  const APIAuthProvider._(this.type);

  /// Returns the latest authorization token, or `null` if unavailable.
  /// If an [Exception] is thrown, it will be treated the same as a `null` token.
  /// However, [Error] objects will not be caught and must be handled by the
  /// developer.
  Future<String?> getLatestAuthToken();
}

/// {@template oidc_auth_provider}
/// Handles the retrieval of tokens for OIDC-protected API calls.
/// {@endtemplate}
abstract class OIDCAuthProvider extends APIAuthProvider {
  /// {@macro oidc_auth_provider}
  const OIDCAuthProvider() : super._(APIAuthorizationType.oidc);
}

/// {@template function_auth_provider}
/// Handles the retrieval of tokens for Custom Function-protected API calls.
/// {@endtemplate}
abstract class FunctionAuthProvider extends APIAuthProvider {
  /// {@macro function_auth_provider}
  const FunctionAuthProvider() : super._(APIAuthorizationType.function);
}

/// Refreshes the token for a given type or all registered types if none is passed.
typedef APIAuthProviderRefresher = Future<void> Function(
    [APIAuthorizationType?]);

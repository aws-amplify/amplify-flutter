/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  final APIAuthorizationMode type;

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
  const OIDCAuthProvider() : super._(APIAuthorizationMode.oidc);
}

/// {@template function_auth_provider}
/// Handles the retrieval of tokens for Custom Function-protected API calls.
/// {@endtemplate}
abstract class FunctionAuthProvider extends APIAuthProvider {
  /// {@macro function_auth_provider}
  const FunctionAuthProvider() : super._(APIAuthorizationMode.function);
}

/// Refreshes the token for a given type or all registered types if none is passed.
typedef APIAuthProviderRefresher = Future<void> Function(
    [APIAuthorizationMode?]);

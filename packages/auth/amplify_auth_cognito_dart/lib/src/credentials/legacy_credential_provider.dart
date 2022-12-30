// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito_dart.legacy_credential_provider}
/// Provides methods to fetch and delete legacy credentials if they exist.
/// {@endtemplate}
abstract class LegacyCredentialProvider {
  /// {@macro amplify_auth_cognito_dart.legacy_credential_provider}
  const LegacyCredentialProvider();

  /// Fetches legacy credentials if they are present.
  Future<CredentialStoreData?> fetchLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  });

  /// Deletes legacy credentials if they are present.
  Future<void> deleteLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  });
}

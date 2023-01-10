// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/src/config/auth/cognito/credentials_provider.dart';
import 'package:amplify_core/src/config/auth/cognito/oauth.dart';
import 'package:amplify_core/src/config/auth/cognito/user_pool.dart';

class MockLegacyCredentialProvider implements LegacyCredentialProvider {
  MockLegacyCredentialProvider({CredentialStoreData? initialData})
      : data = initialData;

  CredentialStoreData? data;

  @override
  Future<void> deleteLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  }) async {
    data = null;
  }

  @override
  Future<CredentialStoreData?> fetchLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  }) async {
    return data;
  }
}

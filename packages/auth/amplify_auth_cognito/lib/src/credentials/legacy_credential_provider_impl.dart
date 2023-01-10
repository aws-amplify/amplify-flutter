// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_auth_cognito/src/credentials/legacy_credential_provider_android.dart';
import 'package:amplify_auth_cognito/src/credentials/legacy_credential_provider_ios.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.legacy_credential_provider_impl}
/// The implementation of [LegacyCredentialProvider] for migrating
/// credentials from the legacy iOS and Android SDKs.
/// {@endtemplate}
class LegacyCredentialProviderImpl implements LegacyCredentialProvider {
  /// {@macro amplify_auth_cognito.legacy_credential_provider_impl}
  LegacyCredentialProviderImpl(CognitoAuthStateMachine stateMachine)
      : _stateMachine = stateMachine;
  final CognitoAuthStateMachine _stateMachine;

  late final LegacyCredentialProvider? _instance = () {
    if (zIsWeb) return null;
    if (Platform.isIOS) {
      return LegacyCredentialProviderIOS(_stateMachine);
    }
    if (Platform.isAndroid) {
      return LegacyCredentialProviderAndroid(_stateMachine);
    }
    return null;
  }();

  @override
  Future<CredentialStoreData?> fetchLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  }) async {
    if (_instance == null) return null;
    return _instance!.fetchLegacyCredentials(
      userPoolConfig: userPoolConfig,
      identityPoolConfig: identityPoolConfig,
      hostedUiConfig: hostedUiConfig,
    );
  }

  @override
  Future<void> deleteLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  }) async {
    if (_instance == null) return;
    return _instance!.deleteLegacyCredentials(
      userPoolConfig: userPoolConfig,
      identityPoolConfig: identityPoolConfig,
      hostedUiConfig: hostedUiConfig,
    );
  }
}

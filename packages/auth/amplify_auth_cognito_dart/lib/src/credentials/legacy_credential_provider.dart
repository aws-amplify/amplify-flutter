// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/state/state/auth_state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito_dart.legacy_credential_provider}
/// Provides methods to fetch and delete legacy credentials if they exist.
/// {@endtemplate}
abstract interface class LegacyCredentialProvider {
  /// {@macro amplify_auth_cognito_dart.legacy_credential_provider}
  const LegacyCredentialProvider();

  /// Fetches legacy credentials if they are present.
  Future<CredentialStoreData?> fetchLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  });

  /// Fetches legacy device secrets if they are present.
  Future<LegacyDeviceDetails?> fetchLegacyDeviceSecrets({
    required String username,
    CognitoUserPoolConfig? userPoolConfig,
  });

  /// Deletes legacy credentials if they are present.
  Future<void> deleteLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  });

  /// Deletes legacy device secrets if they are present.
  Future<void> deleteLegacyDeviceSecrets({
    required String username,
    CognitoUserPoolConfig? userPoolConfig,
  });
}

/// {@template amplify_auth_cognito_dart.legacy_device_details}
/// The legacy device details.
/// {@endtemplate}
class LegacyDeviceDetails {
  /// {@macro amplify_auth_cognito_dart.legacy_device_details}
  const LegacyDeviceDetails({
    required this.deviceKey,
    required this.deviceGroupKey,
    required this.devicePassword,
    required this.asfDeviceId,
  });

  /// The device key/ID.
  final String? deviceKey;

  /// The device group key.
  final String? deviceGroupKey;

  /// The device password.
  final String? devicePassword;

  /// The asf device ID.
  final String? asfDeviceId;
}

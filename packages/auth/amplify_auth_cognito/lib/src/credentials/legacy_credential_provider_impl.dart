// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_auth_cognito/src/credentials/legacy_credential_provider_android.dart';
import 'package:amplify_auth_cognito/src/credentials/legacy_credential_provider_ios.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/credentials/legacy_credential_provider.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
// ignore: implementation_imports, invalid_use_of_internal_member
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/auth/auth_outputs.dart';

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
  Future<CredentialStoreData?> fetchLegacyCredentials(
    AuthOutputs authOutputs,
  ) async {
    if (_instance == null) return null;
    return _instance.fetchLegacyCredentials(authOutputs);
  }

  @override
  Future<void> deleteLegacyCredentials(AuthOutputs authOutputs) async {
    if (_instance == null) return;
    return _instance.deleteLegacyCredentials(authOutputs);
  }

  @override
  Future<LegacyDeviceDetails?> fetchLegacyDeviceSecrets(
    String username,
    AuthOutputs authOutputs,
  ) async {
    if (_instance == null) return null;
    return _instance.fetchLegacyDeviceSecrets(username, authOutputs);
  }

  @override
  Future<void> deleteLegacyDeviceSecrets(
    String username,
    AuthOutputs authOutputs,
  ) async {
    if (_instance == null) return;
    return _instance.deleteLegacyDeviceSecrets(username, authOutputs);
  }
}

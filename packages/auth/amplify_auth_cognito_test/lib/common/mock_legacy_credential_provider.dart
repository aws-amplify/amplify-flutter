// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/credentials/legacy_credential_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/auth_outputs.dart';

class MockLegacyCredentialProvider implements LegacyCredentialProvider {
  MockLegacyCredentialProvider({CredentialStoreData? initialData})
    : data = initialData;

  CredentialStoreData? data;

  @override
  Future<void> deleteLegacyCredentials(AuthOutputs authOutputs) async {
    data = null;
  }

  @override
  Future<CredentialStoreData?> fetchLegacyCredentials(
    AuthOutputs authOutputs,
  ) async {
    return data;
  }

  @override
  Future<LegacyDeviceDetails?> fetchLegacyDeviceSecrets(
    String username,
    AuthOutputs authOutputs,
  ) async {
    return null;
  }

  @override
  Future<void> deleteLegacyDeviceSecrets(
    String username,
    AuthOutputs authOutputs,
  ) async {
    return;
  }
}

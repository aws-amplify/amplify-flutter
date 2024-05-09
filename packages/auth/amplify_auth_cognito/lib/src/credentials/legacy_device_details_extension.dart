// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/credentials/legacy_credential_provider.dart';

/// {@template amplify_auth_cognito.legacy_device_details_extension}
/// Extensions to convert legacy device details secret stored by
/// the legacy Android SDK to legacy device details.
/// {@endtemplate}

extension LegacyDeviceDetailsX on LegacyDeviceDetailsSecret {
  /// {@macro amplify_auth_cognito.legacy_device_details}
  LegacyDeviceDetails? toLegacyDeviceDetails() {
    return LegacyDeviceDetails(
      deviceKey: deviceKey,
      deviceGroupKey: deviceGroupKey,
      devicePassword: devicePassword,
      asfDeviceId: asfDeviceId,
    );
  }
}

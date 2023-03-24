// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';

/// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
class DataProviderIos implements LegacyNativeDataProvider {
  /// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
  DataProviderIos()

      // ignore: invalid_use_of_internal_member
      : _keyValueStore = AmplifySecureStorage(
          config: AmplifySecureStorageConfig.byNamespace(namespace: _context),
        );

  static const _context = 'com.amazonaws.AWSPinpointContext';
  static const _key = 'com.amazonaws.AWSPinpointContextKeychainUniqueIdKey';

  final AmplifySecureStorage _keyValueStore;

  @override
  Future<String?> getEndpointId(String pinpointAppId) async {
    final endpointId = await _keyValueStore.read(key: _key);
    return endpointId;
  }
}

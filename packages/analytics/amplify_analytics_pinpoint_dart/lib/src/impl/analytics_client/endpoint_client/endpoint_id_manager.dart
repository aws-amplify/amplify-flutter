// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// {@template amplify_analytics_pinpoint_dart.endpoint_info_store}
/// Manages retrieval, storage, and management of Pinpoint Endpoint id
/// {@endtemplate}
class EndpointIdManager {
  /// {@macro amplify_analytics_pinpoint_dart.endpoint_info_store}
  EndpointIdManager({
    required SecureStorageInterface store,
    LegacyNativeDataProvider? legacyNativeDataProvider,
    String? pinpointAppId,
  })  : _store = store,
        _legacyNativeDataProvider = legacyNativeDataProvider,
        _pinpointAppId = pinpointAppId;

  final SecureStorageInterface _store;
  final LegacyNativeDataProvider? _legacyNativeDataProvider;
  final String? _pinpointAppId;

  /// Retrieve the stored pinpoint endpoint id
  Future<String> retrieveEndpointId() async {
    String? fixedEndpointId;

    if (_pinpointAppId != null && _legacyNativeDataProvider != null) {
      fixedEndpointId = await _retrieveAndManageLegacyEndpointId(
        _pinpointAppId!,
        _legacyNativeDataProvider!,
      );
    }

    // Read the existing ID.
    fixedEndpointId ??= await _store.read(
      key: EndpointStoreKey.UniqueId.name,
    );

    // Generate a new ID if one does not exist.
    if (fixedEndpointId == null) {
      fixedEndpointId = uuid();
      await _store.write(
        key: EndpointStoreKey.UniqueId.name,
        value: fixedEndpointId,
      );
    }
    return fixedEndpointId;
  }

  Future<String?> _retrieveAndManageLegacyEndpointId(
    String appId,
    LegacyNativeDataProvider dataProvider,
  ) async {
    // Retrieve Unique ID
    final endpointInformationVersion =
        await _store.read(key: EndpointStoreKey.version.name);

    String? fixedEndpointId;
    if (endpointInformationVersion == null) {
      final legacyEndpointId = await dataProvider.getEndpointId(appId);
      // Migrate legacy data if it is non-null
      if (legacyEndpointId != null) {
        fixedEndpointId = legacyEndpointId;
        await _store.write(
          key: EndpointStoreKey.UniqueId.name,
          value: legacyEndpointId,
        );
      }
      // Update the version to prevent future legacy data migrations.
      await _store.write(
        key: EndpointStoreKey.version.name,
        value: EndpointStoreVersion.v1.name,
      );
    }
    return fixedEndpointId;
  }
}

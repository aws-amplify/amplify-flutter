// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

import 'endpoint_global_fields_manager.dart';

/// Storage scope for Endpoint info.
/// Used to determine where Endpoint info is stored.
enum EndpointStorageScope {
  ///
  analyticsPinpoint,
}

/// {@template amplify_analytics_pinpoint_dart.endpoint_store_manager}
/// Manages retrieval, storage, and management of Pinpoint Endpoint id and fields
/// {@endtemplate}
class EndpointInfoStoreManager {
  /// {@macro amplify_analytics_pinpoint_dart.endpoint_store_manager}
  EndpointInfoStoreManager({
    required SecureStorageInterface store,
    LegacyNativeDataProvider? legacyNativeDataProvider,
  })  : _store = store,
        _legacyNativeDataProvider = legacyNativeDataProvider;

  final SecureStorageInterface _store;
  final LegacyNativeDataProvider? _legacyNativeDataProvider;

  /// Fields of the Pinpoint Endpoint
  late final Future<EndpointGlobalFieldsManager> endpointFields = () async {
    return EndpointGlobalFieldsManager.create(_store);
  }();

  /// Retrieve the stored pinpoint endpoint id
  Future<String> retrieveEndpointId({
    String? pinpointAppId,
  }) async {
    String? fixedEndpointId;

    if (pinpointAppId != null && _legacyNativeDataProvider != null) {
      fixedEndpointId = await _retrieveAndManageLegacyEndpointId(
        pinpointAppId,
        _legacyNativeDataProvider!,
      );
    }

    // Read the existing ID.
    fixedEndpointId ??= await _store.read(
      key: EndpointStoreKey.endpointId.name,
    );

    // Generate a new ID if one does not exist.
    if (fixedEndpointId == null) {
      fixedEndpointId = uuid();
      await _store.write(
        key: EndpointStoreKey.endpointId.name,
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
          key: EndpointStoreKey.endpointId.name,
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

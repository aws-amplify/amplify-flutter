// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_global_fields_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// Storage scope for Endpoint info.
/// Used to determine where Endpoint info is stored.
enum EndpointStorageScope {
  ///
  analyticsPinpoint,

  ///
  pushNotifications,
}

/// Ensure Endpoint data is accessed with pinpointId prefix
class _EndpointStore implements SecureStorageInterface {
  _EndpointStore(this._pinpointAppId, this._store);

  final String _pinpointAppId;
  final SecureStorageInterface _store;

  @override
  FutureOr<void> delete({required String key}) {
    return _store.delete(key: _pinpointAppId + key);
  }

  @override
  FutureOr<String?> read({required String key}) {
    return _store.read(key: _pinpointAppId + key);
  }

  @override
  FutureOr<void> write({required String key, required String value}) {
    return _store.write(key: _pinpointAppId + key, value: value);
  }
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

  late final String _pinpointAppId;
  late final _EndpointStore _endpointStore;

  var _isInit = false;

  /// Initialize inner fields that require pinpointAppId to function
  Future<void> init({required String pinpointAppId}) async {
    if (_isInit) return;

    _pinpointAppId = pinpointAppId;
    _endpointStore = _EndpointStore(_pinpointAppId, _store);

    endpointFields = await EndpointGlobalFieldsManager.create(_endpointStore);
    endpointId = await _retrieveEndpointId();

    _isInit = true;
  }

  /// Fields of the Pinpoint Endpoint
  late final EndpointGlobalFieldsManager endpointFields;

  /// Stored Pinpoint Endpoint id
  late final String endpointId;

  /// Retrieve the stored pinpoint endpoint id
  Future<String> _retrieveEndpointId() async {
    String? fixedEndpointId;

    final storeVersion = await _store.read(
      key: EndpointStoreKey.version.name,
    );

    // Migration: null -> v1.
    if (storeVersion == null) {
      if (_legacyNativeDataProvider != null) {
        fixedEndpointId = await _retrieveAndManageLegacyEndpointId(
          appId: _pinpointAppId,
          storeVersion: storeVersion,
          dataProvider: _legacyNativeDataProvider!,
        );
      }
      await _store.write(
        key: EndpointStoreKey.version.name,
        value: EndpointStoreVersion.v1.name,
      );
    }

    // Read the existing ID.
    fixedEndpointId ??= await _endpointStore.read(
      key: EndpointStoreKey.endpointId.name,
    );

    // Generate a new ID if one does not exist.
    if (fixedEndpointId == null) {
      fixedEndpointId = uuid();
      await _endpointStore.write(
        key: EndpointStoreKey.endpointId.name,
        value: fixedEndpointId,
      );
    }
    return fixedEndpointId;
  }

  Future<String?> _retrieveAndManageLegacyEndpointId({
    required String appId,
    String? storeVersion,
    required LegacyNativeDataProvider dataProvider,
  }) async {
    String? fixedEndpointId;
    if (storeVersion == null) {
      final legacyEndpointId = await dataProvider.getEndpointId(appId);
      // Migrate legacy data if it is non-null
      if (legacyEndpointId != null) {
        fixedEndpointId = legacyEndpointId;
        await _endpointStore.write(
          key: EndpointStoreKey.endpointId.name,
          value: legacyEndpointId,
        );
      }
    }
    return fixedEndpointId;
  }
}

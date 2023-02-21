// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_id_manager.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

void main() {
  group('LegacyNativeDataProvider ', () {
    late MockLegacyNativeDataProvider legacyDataProvider;
    late MockSecureStorage store;

    const pinpointAppId = 'appId';
    const legacyEndpointId = 'legacy-endpointId';

    setUp(() {
      legacyDataProvider = MockLegacyNativeDataProvider();
      store = MockSecureStorage();
    });

    test('First app load, no legacy data, writes proper values', () async {
      when(() => legacyDataProvider.getEndpointId(pinpointAppId))
          .thenAnswer((_) async => null);

      final endpointIdManager = EndpointIdManager(
        store: store,
        legacyNativeDataProvider: legacyDataProvider,
        pinpointAppId: pinpointAppId,
      );
      expect(await endpointIdManager.retrieveEndpointId(), isNotNull);

      final storeVersion = await store.read(
        key: EndpointStoreKey.version.name,
      );
      expect(storeVersion, EndpointStoreVersion.v1.name);

      final migratedEndpointId = await store.read(
        key: EndpointStoreKey.endpointId.name,
      );
      expect(migratedEndpointId, isNotNull);

      verify(() => legacyDataProvider.getEndpointId(pinpointAppId)).called(1);
    });

    test('First app load, legacy data, writes proper values', () async {
      when(() => legacyDataProvider.getEndpointId(pinpointAppId))
          .thenAnswer((_) => Future.value(legacyEndpointId));

      final endpointIdManager = EndpointIdManager(
        store: store,
        legacyNativeDataProvider: legacyDataProvider,
        pinpointAppId: pinpointAppId,
      );
      expect(await endpointIdManager.retrieveEndpointId(), legacyEndpointId);

      final storeVersion = await store.read(
        key: EndpointStoreKey.version.name,
      );
      expect(storeVersion, EndpointStoreVersion.v1.name);

      final migratedEndpointId = await store.read(
        key: EndpointStoreKey.endpointId.name,
      );
      expect(migratedEndpointId, legacyEndpointId);

      verify(() => legacyDataProvider.getEndpointId(pinpointAppId)).called(1);
    });

    test('Second app load, legacy data is ignored', () async {
      when(() => legacyDataProvider.getEndpointId(pinpointAppId))
          .thenAnswer((_) => Future.value(legacyEndpointId));

      final endpointId = uuid();
      store.seedData({
        EndpointStoreKey.version.name: EndpointStoreVersion.v1.name,
        EndpointStoreKey.endpointId.name: endpointId
      });

      final endpointIdManager = EndpointIdManager(
        store: store,
        legacyNativeDataProvider: legacyDataProvider,
        pinpointAppId: pinpointAppId,
      );
      expect(await endpointIdManager.retrieveEndpointId(), endpointId);

      final migratedEndpointId = await store.read(
        key: EndpointStoreKey.endpointId.name,
      );
      expect(migratedEndpointId, endpointId);

      verifyNever(() => legacyDataProvider.getEndpointId(any()));
    });
  });
}

class MockLegacyNativeDataProvider extends Mock
    implements LegacyNativeDataProvider {}

class MockSecureStorage extends Mock implements SecureStorageInterface {
  MockSecureStorage();

  final Map<String, String?> _data = {};

  void seedData(Map<String, String?> data) {
    _data.addAll(data);
  }

  @override
  FutureOr<String?> read({required String key}) {
    return _data[key];
  }

  @override
  FutureOr<void> write({required String key, required String value}) {
    _data[key] = value;
  }
}

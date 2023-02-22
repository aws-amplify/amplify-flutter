// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_core/amplify_core.dart';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'common/mock_secure_storage.dart';
import 'common/mocktail_mocks.dart';

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

      final endpointIdManager = EndpointInfoStoreManager(
        store: store,
        legacyNativeDataProvider: legacyDataProvider,
      );
      await endpointIdManager.init(pinpointAppId: pinpointAppId);

      expect(
        endpointIdManager.endpointId,
        isNotNull,
      );

      final storeVersion = await store.read(
        key: EndpointStoreKey.version.name,
      );
      expect(storeVersion, EndpointStoreVersion.v1.name);

      final migratedEndpointId = await store.read(
        key: pinpointAppId + EndpointStoreKey.endpointId.name,
      );
      expect(migratedEndpointId, isNotNull);

      verify(() => legacyDataProvider.getEndpointId(pinpointAppId)).called(1);
    });

    test('First app load, legacy data, writes proper values', () async {
      when(() => legacyDataProvider.getEndpointId(pinpointAppId))
          .thenAnswer((_) => Future.value(legacyEndpointId));

      final endpointIdManager = EndpointInfoStoreManager(
        store: store,
        legacyNativeDataProvider: legacyDataProvider,
      );
      await endpointIdManager.init(pinpointAppId: pinpointAppId);
      expect(
        endpointIdManager.endpointId,
        legacyEndpointId,
      );

      final storeVersion = await store.read(
        key: EndpointStoreKey.version.name,
      );
      expect(storeVersion, EndpointStoreVersion.v1.name);

      final migratedEndpointId = await store.read(
        key: pinpointAppId + EndpointStoreKey.endpointId.name,
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
        pinpointAppId + EndpointStoreKey.endpointId.name: endpointId
      });

      final endpointIdManager = EndpointInfoStoreManager(
        store: store,
        legacyNativeDataProvider: legacyDataProvider,
      );
      await endpointIdManager.init(pinpointAppId: pinpointAppId);

      expect(
        endpointIdManager.endpointId,
        endpointId,
      );

      final migratedEndpointId = await store.read(
        key: pinpointAppId + EndpointStoreKey.endpointId.name,
      );
      expect(migratedEndpointId, endpointId);

      verifyNever(() => legacyDataProvider.getEndpointId(any()));
    });
  });
}

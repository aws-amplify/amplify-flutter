// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:drift/drift.dart' show LazyDatabase;
import 'package:drift/native.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

void main() {
  group('Analytics Legacy Native Data Tests', () {
    late MockLegacyNativeDataProvider legacyDataProvider;
    late MockSecureStorage store;

    const appId = 'appId';
    const legacyEndpointId = 'legacy-endpointId';

    setUp(() {
      legacyDataProvider = MockLegacyNativeDataProvider();
      store = MockSecureStorage();
    });

    test('First app load, no legacy data, writes proper values', () async {
      when(() => legacyDataProvider.getEndpointId(appId))
          .thenAnswer((_) async => null);

      final analyticsPlugin = AmplifyAnalyticsPinpointDart(
        endpointInfoStore: store,
        legacyNativeDataProvider: legacyDataProvider,
        dbConnectFunction: ({required String name, FutureOr<String>? path}) {
          return _openConnection();
        },
      );
      await analyticsPlugin.retrieveEndpointId(pinpointAppId: appId);

      final storeVersion = await store.read(
        key: EndpointStoreKey.version.name,
      );
      expect(storeVersion, EndpointStoreVersion.v1.name);

      final migratedEndpointId = await store.read(
        key: AmplifyAnalyticsPinpointDart.endpointIdStorageKey,
      );
      expect(migratedEndpointId, isNotNull);

      verify(() => legacyDataProvider.getEndpointId(appId)).called(1);
    });

    test('First app load, legacy data, writes proper values', () async {
      when(() => legacyDataProvider.getEndpointId(appId))
          .thenAnswer((_) => Future.value(legacyEndpointId));

      final analyticsPlugin = AmplifyAnalyticsPinpointDart(
        endpointInfoStore: store,
        legacyNativeDataProvider: legacyDataProvider,
        dbConnectFunction: ({required String name, FutureOr<String>? path}) {
          return _openConnection();
        },
      );
      await analyticsPlugin.retrieveEndpointId(pinpointAppId: appId);

      final storeVersion = await store.read(
        key: EndpointStoreKey.version.name,
      );
      expect(storeVersion, EndpointStoreVersion.v1.name);

      final migratedEndpointId = await store.read(
        key: AmplifyAnalyticsPinpointDart.endpointIdStorageKey,
      );
      expect(migratedEndpointId, legacyEndpointId);

      verify(() => legacyDataProvider.getEndpointId(appId)).called(1);
    });

    test('Second app load, legacy data is ignored', () async {
      when(() => legacyDataProvider.getEndpointId(appId))
          .thenAnswer((_) => Future.value(legacyEndpointId));

      final endpointId = uuid();
      store.seedData({
        EndpointStoreKey.version.name: EndpointStoreVersion.v1.name,
        AmplifyAnalyticsPinpointDart.endpointIdStorageKey: endpointId
      });

      final analyticsPlugin = AmplifyAnalyticsPinpointDart(
        endpointInfoStore: store,
        legacyNativeDataProvider: legacyDataProvider,
        dbConnectFunction: ({required String name, FutureOr<String>? path}) {
          return _openConnection();
        },
      );
      await analyticsPlugin.retrieveEndpointId(pinpointAppId: appId);

      final migratedEndpointId = await store.read(
        key: AmplifyAnalyticsPinpointDart.endpointIdStorageKey,
      );
      expect(migratedEndpointId, endpointId);

      verifyNever(() => legacyDataProvider.getEndpointId(any()));
    });
  });
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    final file = File('db.sqlite');
    return NativeDatabase.createInBackground(file);
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

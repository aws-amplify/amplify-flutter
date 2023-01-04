// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Analytics Legacy Native Data Tests', () {
    test('First app load, no legacy data, writes proper values', () async {
      var readCalls = 0;
      var writeCalls = 0;

      final legacyDataProvider = MockLegacyNativeDataProvider();
      final store = MockSecureStorage(
        writeCallback: (key, value) {
          // version written
          if (writeCalls == 0) {
            expect(key, EndpointStoreKey.version.name);
            expect(value, EndpointStoreVersion.v1.name);
          }
          // endpoint written
          else if (writeCalls == 1) {
            expect(key, AmplifyAnalyticsPinpointDart.endpointIdStorageKey);
          }
          writeCalls++;
        },
        readCallback: (key) {
          if (key == EndpointStoreKey.version.name) {
            readCalls++;
            return null;
          }
          fail('Read should not be called: $key');
        },
        deleteCallback: (key) {
          fail('Delete should not be called: $key');
        },
      );

      await AmplifyAnalyticsPinpointDart.retrieveEndpointId(
          pinpointAppId: 'appId',
          store: store,
          legacyDataProvider: legacyDataProvider);

      expect(writeCalls, 2);
      expect(readCalls, 1);
    });

    test('First app load, legacy data, writes proper values', () async {
      var readCalls = 0;
      var writeCalls = 0;
      const endpointId = 'endpointId';

      final legacyDataProvider = MockLegacyNativeDataProvider(
        endpointId: endpointId,
      );

      final store = MockSecureStorage(
        writeCallback: (key, value) {
          // version written
          if (writeCalls == 0) {
            expect(key, EndpointStoreKey.version.name);
            expect(value, EndpointStoreVersion.v1.name);
          }
          // endpoint written
          else if (writeCalls == 1) {
            expect(key, AmplifyAnalyticsPinpointDart.endpointIdStorageKey);
            expect(value, endpointId);
          }
          writeCalls++;
        },
        readCallback: (key) {
          if (key == EndpointStoreKey.version.name) {
            readCalls++;
            return null;
          }
          fail('Read called with wrong key: $key');
        },
        deleteCallback: (key) {
          fail('Delete should not be called: $key');
        },
      );

      await AmplifyAnalyticsPinpointDart.retrieveEndpointId(
          pinpointAppId: 'appId',
          store: store,
          legacyDataProvider: legacyDataProvider);

      expect(writeCalls, 2);
      expect(readCalls, 1);
    });

    test('Second app load, only read is called', () async {
      var readCalls = 0;

      final legacyDataProvider = MockLegacyNativeDataProvider(
        getEndpointIdCallback: () {
          fail('GetEndpointId should not be called');
        },
      );
      final store = MockSecureStorage(
        readCallback: (key) {
          if (key == AmplifyAnalyticsPinpointDart.endpointIdStorageKey) {
            readCalls++;
            return 'storedEndpointId';
          } else if (key == EndpointStoreKey.version.name) {
            readCalls++;
            return EndpointStoreVersion.v1.name;
          }
          fail('Read called with wrong key: $key');
        },
        writeCallback: (key, value) {
          fail('Write should not be called: $key / $value');
        },
        deleteCallback: (key) {
          fail('Delete should not be called: $key');
        },
      );

      await AmplifyAnalyticsPinpointDart.retrieveEndpointId(
        pinpointAppId: 'appId',
        store: store,
        legacyDataProvider: legacyDataProvider,
      );

      expect(readCalls, 2);
    });
  });
}

class MockLegacyNativeDataProvider implements LegacyNativeDataProvider {
  MockLegacyNativeDataProvider({
    this.endpointId,
    this.getEndpointIdCallback,
  });
  final void Function()? getEndpointIdCallback;

  final String? endpointId;

  @override
  Future<String?> getEndpointId() async {
    getEndpointIdCallback?.call();
    return endpointId;
  }

  @override
  Future<void> initialize(String pinpointAppId) async {}
}

class MockSecureStorage implements SecureStorageInterface {
  MockSecureStorage({
    this.deleteCallback,
    this.readCallback,
    this.writeCallback,
  });
  final void Function(String)? deleteCallback;
  final String? Function(String)? readCallback;
  final void Function(String, String)? writeCallback;

  @override
  FutureOr<void> delete({required String key}) {
    deleteCallback?.call(key);
  }

  @override
  FutureOr<String?> read({required String key}) {
    return readCallback?.call(key);
  }

  @override
  FutureOr<void> write({required String key, required String value}) {
    writeCallback?.call(key, value);
  }
}

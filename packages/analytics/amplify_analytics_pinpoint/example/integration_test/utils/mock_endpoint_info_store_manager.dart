// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

/// Mock of [EndpointInfoStoreManager] that uses a static
/// mocked [SecureStorageInterface] for storage.
final EndpointInfoStoreManager mockEndpointInfoStoreManager =
    _MockEndpointInfoStoreManager();

class _MockEndpointInfoStoreManager extends EndpointInfoStoreManager {
  _MockEndpointInfoStoreManager() : super(store: _mockEndpointInfoStore);
}

/// Static key/value storage for use in integration tests.
///
/// Should be static to mimic the behavior of iOS/Android which persist keys
/// between relaunches (e.g. between test groups).
final SecureStorageInterface _mockEndpointInfoStore = _MockSecureStorage()
  ..write(
    key: EndpointStoreKey.endpointId.name,
    value: mockEndpointId,
  );
final String mockEndpointId = uuid();

class _MockSecureStorage extends SecureStorageInterface {
  final _storage = <String, String>{};

  @override
  Future<void> delete({required String key}) async => _storage.remove(key);

  @override
  Future<String?> read({required String key}) async => _storage[key];

  @override
  Future<void> write({required String key, required String value}) async =>
      _storage[key] = value;
}

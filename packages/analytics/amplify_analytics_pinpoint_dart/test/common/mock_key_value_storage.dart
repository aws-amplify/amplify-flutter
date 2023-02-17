// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:aws_common/aws_common.dart';

/// Static key/value storage for use in integration tests.
///
/// Should be static to mimic the behavior of iOS/Android which persist keys
/// between relaunches (e.g. between test groups).
final SecureStorageInterface mockEndpointInfoStore = _MockEndpointInfoStore()
  ..write(
    key: EndpointStoreKey.endpointId.name,
    value: mockEndpointId,
  );
final String mockEndpointId = uuid();

class _MockEndpointInfoStore extends SecureStorageInterface {
  final _storage = <String, String>{};

  @override
  Future<void> delete({required String key}) async => _storage.remove(key);

  @override
  Future<String?> read({required String key}) async => _storage[key];

  @override
  Future<void> write({required String key, required String value}) async =>
      _storage[key] = value;
}

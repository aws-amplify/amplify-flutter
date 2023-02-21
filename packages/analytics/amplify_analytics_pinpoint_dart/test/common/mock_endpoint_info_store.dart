// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:aws_common/aws_common.dart';

import 'mock_secure_storage.dart';

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
final SecureStorageInterface _mockEndpointInfoStore = MockSecureStorage()
  ..write(
    key: EndpointStoreKey.endpointId.name,
    value: mockEndpointId,
  );
final String mockEndpointId = uuid();

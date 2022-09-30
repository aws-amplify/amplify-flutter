// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:uuid/uuid.dart';

/// Interface with underlying device key-value storage using [SecureStorageInterface]
/// Present interface for saving/retrieving Strings
class KeyValueStore {
  // Stored Keys
  static const String uniqueIdKey = 'UniqueId';

  static const String eventsGlobalAttrsKey = 'EventsGlobalAttributesKey';

  static const String endpointGlobalAttrsKey = 'EndpointGlobalAttributesKey';

  static const String eventsGlobalMetricsKey = 'EventsGlobalMetricsKey';

  static const String endpointGlobalMetricsKey = 'EndpointGlobalMetricsKey';

  late SecureStorageInterface _storage;

  late String uniqueId;

  KeyValueStore._getInstance(SecureStorageInterface? storage) {
    if (storage == null) {
      _storage = AmplifySecureStorageWorker(
          config: AmplifySecureStorageConfig(
        scope: 'analytics',
      ));
    } else {
      _storage = storage;
    }
  }

  static Future<KeyValueStore> getInstance(
      SecureStorageInterface? storage) async {
    final instance = KeyValueStore._getInstance(storage);

    // Retrieve Unique ID
    var storedUniqueId = await instance._storage.read(key: uniqueIdKey);
    if (storedUniqueId == null) {
      storedUniqueId = const Uuid().v1();
      await instance._storage.write(key: uniqueIdKey, value: storedUniqueId);
    }
    instance.uniqueId = storedUniqueId;

    return instance;
  }

  Future<void> saveJson(String key, String json) async {
    await _storage.write(key: key, value: json);
  }

  Future<String?> getJson(String key) async {
    return await _storage.read(key: key);
  }

  /// UniqueID is used to identify the Pinpoint Endpoint attached to this device
  /// It must be constant and never changed
  String getFixedEndpointId() {
    return uniqueId;
  }
}

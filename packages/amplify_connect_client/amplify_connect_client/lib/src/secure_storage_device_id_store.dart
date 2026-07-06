// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_connect_client.secure_storage_device_id_store}
/// A [DeviceIdStore] backed by `amplify_secure_storage`.
///
/// Persists the stable device id and the registered object's
/// `ProfileObjectUniqueKey` so they survive app restarts.
///
/// A [SecureStorageInterface] may be injected; otherwise a default instance is
/// created. The default reuses the push notifications storage scope because the
/// secure storage scope enum does not yet define a Connect-specific scope.
/// {@endtemplate}
class SecureStorageDeviceIdStore implements DeviceIdStore {
  /// {@macro amplify_connect_client.secure_storage_device_id_store}
  SecureStorageDeviceIdStore({SecureStorageInterface? storage, Uuid? uuid})
    : _storage =
          storage ??
          AmplifySecureStorage.factoryFrom()(
            AmplifySecureStorageScope.awsPinpointPushNotificationsPlugin,
          ),
      _uuid = uuid ?? const Uuid();

  final SecureStorageInterface _storage;
  final Uuid _uuid;

  @override
  Future<String> getOrCreateDeviceId() async {
    final existing = await _storage.read(key: connectDeviceIdKey);
    if (existing != null && existing.isNotEmpty) return existing;
    final id = _uuid.v4();
    await _storage.write(key: connectDeviceIdKey, value: id);
    return id;
  }

  @override
  Future<String?> readDeviceId() async =>
      _storage.read(key: connectDeviceIdKey);

  @override
  Future<String?> readProfileObjectKey() async =>
      _storage.read(key: connectProfileObjectKey);

  @override
  Future<void> writeProfileObjectKey(String key) async =>
      _storage.write(key: connectProfileObjectKey, value: key);

  @override
  Future<void> clear() async {
    await _storage.delete(key: connectDeviceIdKey);
    await _storage.delete(key: connectProfileObjectKey);
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:uuid/uuid.dart';

/// Storage key for the stable device identifier.
///
/// This matches the key used by the event enrichment client so a device
/// resolves to one identifier across Amplify packages. Note that the Flutter
/// implementations currently use different backing stores (secure storage here
/// versus shared preferences in enrichment); unifying the store is tracked as
/// a follow-up.
const connectDeviceIdKey = 'com.amplifyframework.device_id';

/// Storage key for the last `ProfileObjectUniqueKey` returned when the device
/// was registered. Needed to delete the object later, since the mobile IAM
/// policy does not permit `ListProfileObjects`.
const connectProfileObjectKey =
    'com.amplifyframework.connect.device_object_key';

/// {@template amplify_connect_client.device_id_store}
/// Persists the stable device identifier and the server-generated
/// `ProfileObjectUniqueKey` for the registered `AmplifyDevice` object.
/// {@endtemplate}
abstract interface class DeviceIdStore {
  /// Returns the persisted device id, generating and persisting a new UUID v4
  /// if none exists.
  Future<String> getOrCreateDeviceId();

  /// Returns the persisted device id, or `null` if none exists.
  Future<String?> readDeviceId();

  /// Returns the persisted `ProfileObjectUniqueKey`, or `null` if the device
  /// has not been registered.
  Future<String?> readProfileObjectKey();

  /// Persists the `ProfileObjectUniqueKey` returned by `PutProfileObject`.
  Future<void> writeProfileObjectKey(String key);

  /// Clears the device id and the stored `ProfileObjectUniqueKey`.
  Future<void> clear();
}

/// {@template amplify_connect_client.in_memory_device_id_store}
/// An in-memory [DeviceIdStore] with no persistence.
///
/// Useful for tests and for the pure-Dart core. Flutter apps should use the
/// secure-storage-backed implementation from the `amplify_connect_client`
/// package so the id survives restarts.
/// {@endtemplate}
class InMemoryDeviceIdStore implements DeviceIdStore {
  /// {@macro amplify_connect_client.in_memory_device_id_store}
  InMemoryDeviceIdStore({Uuid? uuid}) : _uuid = uuid ?? const Uuid();

  final Uuid _uuid;
  String? _deviceId;
  String? _objectKey;

  @override
  Future<String> getOrCreateDeviceId() async => _deviceId ??= _uuid.v4();

  @override
  Future<String?> readDeviceId() async => _deviceId;

  @override
  Future<String?> readProfileObjectKey() async => _objectKey;

  @override
  Future<void> writeProfileObjectKey(String key) async => _objectKey = key;

  @override
  Future<void> clear() async {
    _deviceId = null;
    _objectKey = null;
  }
}

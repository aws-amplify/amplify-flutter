// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:uuid/uuid.dart';

/// Storage key for the stable device identifier.
///
/// This matches the key used by the event enrichment client, and both packages
/// use the same plain store (shared preferences on Android, `NSUserDefaults`
/// on iOS) with read-or-create semantics, so a device resolves to one shared
/// identifier across Amplify packages. The device id is passed to the identify
/// endpoint as `options.deviceId`.
const connectDeviceIdKey = 'com.amplifyframework.device_id';

/// {@template amplify_connect_client.device_id_store}
/// Persists the stable device identifier used as `options.deviceId` when
/// registering a device through the identify endpoint.
/// {@endtemplate}
abstract interface class DeviceIdStore {
  /// Returns the persisted device id, generating and persisting a new UUID v4
  /// if none exists.
  Future<String> getOrCreateDeviceId();

  /// Returns the persisted device id, or `null` if none exists.
  Future<String?> readDeviceId();

  /// Clears the persisted device id.
  Future<void> clear();
}

/// {@template amplify_connect_client.in_memory_device_id_store}
/// An in-memory [DeviceIdStore] with no persistence.
///
/// Useful for tests and for the pure-Dart core. Flutter apps should use the
/// shared-preferences-backed implementation from the `amplify_connect_client`
/// package so the id survives restarts and is shared with other Amplify
/// packages.
/// {@endtemplate}
class InMemoryDeviceIdStore implements DeviceIdStore {
  /// {@macro amplify_connect_client.in_memory_device_id_store}
  InMemoryDeviceIdStore({Uuid? uuid}) : _uuid = uuid ?? const Uuid();

  final Uuid _uuid;
  String? _deviceId;

  @override
  Future<String> getOrCreateDeviceId() async => _deviceId ??= _uuid.v4();

  @override
  Future<String?> readDeviceId() async => _deviceId;

  @override
  Future<void> clear() async => _deviceId = null;
}

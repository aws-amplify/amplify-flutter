// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_connect_client.shared_preferences_device_id_store}
/// A [DeviceIdStore] backed by `shared_preferences`.
///
/// The device id uses read-or-create semantics under
/// [connectDeviceIdKey] — the same key, store, and behavior as the event
/// enrichment client's client-id provider — so both packages resolve the
/// identical id for a device. Whichever package initializes first generates
/// the UUID; the other reads it.
///
/// The device id is a random identifier, not a credential, so plain storage is
/// appropriate. Cognito credentials remain in secure storage, managed by
/// Amplify Auth.
/// {@endtemplate}
class SharedPreferencesDeviceIdStore implements DeviceIdStore {
  /// {@macro amplify_connect_client.shared_preferences_device_id_store}
  SharedPreferencesDeviceIdStore({Uuid? uuid}) : _uuid = uuid ?? const Uuid();

  final Uuid _uuid;

  @override
  Future<String> getOrCreateDeviceId() async {
    final prefs = await SharedPreferences.getInstance();
    final existing = prefs.getString(connectDeviceIdKey);
    if (existing != null && existing.isNotEmpty) return existing;
    final id = _uuid.v4();
    await prefs.setString(connectDeviceIdKey, id);
    return id;
  }

  @override
  Future<String?> readDeviceId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(connectDeviceIdKey);
  }

  @override
  Future<String?> readProfileObjectKey() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(connectProfileObjectKey);
  }

  @override
  Future<void> writeProfileObjectKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(connectProfileObjectKey, key);
  }

  @override
  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(connectDeviceIdKey);
    await prefs.remove(connectProfileObjectKey);
  }
}

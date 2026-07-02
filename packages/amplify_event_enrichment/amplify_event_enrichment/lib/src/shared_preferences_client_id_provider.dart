// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

/// SharedPreferences key for the persistent client/device ID.
///
/// This is a cross-package integration contract shared with the Connect client.
/// Both packages use the same native store (SharedPreferences on Android,
/// NSUserDefaults on iOS) so that a device gets ONE id everywhere — including
/// Phase 2 native packages.
const _storageKey = 'com.amplifyframework.device_id';

/// {@template amplify_event_enrichment.shared_preferences_client_id_provider}
/// Reads or creates a persistent client ID from SharedPreferences.
///
/// Uses read-or-create semantics: if a non-empty value exists at [_storageKey],
/// it is returned. Otherwise a new UUID v4 is generated, persisted, and
/// returned. Whichever of enrichment/Connect initializes first generates the
/// UUID; the other reads it.
/// {@endtemplate}
class SharedPreferencesClientIdProvider {
  /// {@macro amplify_event_enrichment.shared_preferences_client_id_provider}
  const SharedPreferencesClientIdProvider();

  /// Returns the persistent client ID, creating one if it doesn't exist.
  Future<String> getClientId() async {
    final prefs = await SharedPreferences.getInstance();
    final existing = prefs.getString(_storageKey);
    if (existing != null && existing.isNotEmpty) return existing;
    final id = const Uuid().v4();
    await prefs.setString(_storageKey, id);
    return id;
  }
}

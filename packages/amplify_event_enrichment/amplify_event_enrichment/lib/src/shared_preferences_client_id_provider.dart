// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/src/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_event_enrichment.client_id_provider}
/// Provides the persistent client ID stamped on every enriched event.
///
/// Implement this to source the ID from somewhere other than the default
/// [SharedPreferencesClientIdProvider] — for example a keychain-backed store,
/// or a fixed value in tests.
///
/// The ID is expected to be stable for the lifetime of the install: returning
/// a new value on each call makes one device look like many.
/// {@endtemplate}
// ignore: one_member_abstracts
abstract interface class ClientIdProvider {
  /// Returns the persistent client ID, creating one if it doesn't exist.
  Future<String> getClientId();
}

/// {@template amplify_event_enrichment.shared_preferences_client_id_provider}
/// Reads or creates a persistent client ID from SharedPreferences.
///
/// Uses read-or-create semantics: if a non-empty value exists at
/// [zClientIdStorageKey], it is returned. Otherwise a new UUID v4 is
/// generated, persisted, and returned. Whichever of enrichment/Connect
/// initializes first generates the UUID; the other reads it.
/// {@endtemplate}
class SharedPreferencesClientIdProvider implements ClientIdProvider {
  /// {@macro amplify_event_enrichment.shared_preferences_client_id_provider}
  const SharedPreferencesClientIdProvider();

  @override
  Future<String> getClientId() async {
    final prefs = await SharedPreferences.getInstance();
    final existing = prefs.getString(zClientIdStorageKey);
    if (existing != null && existing.isNotEmpty) return existing;
    final id = const Uuid().v4();
    await prefs.setString(zClientIdStorageKey, id);
    return id;
  }
}

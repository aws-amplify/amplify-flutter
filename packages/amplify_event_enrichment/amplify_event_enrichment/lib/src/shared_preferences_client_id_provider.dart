// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/src/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_event_enrichment.client_id_provider}
/// Provides the persistent client ID stamped on every enriched event.
///
/// The ID must be stable for the lifetime of the install.
/// {@endtemplate}
// ignore: one_member_abstracts
abstract interface class ClientIdProvider {
  /// Returns the persistent client ID, creating one if it doesn't exist.
  Future<String> getClientId();
}

/// {@template amplify_event_enrichment.shared_preferences_client_id_provider}
/// Reads or creates a persistent client ID at [zClientIdStorageKey] in
/// SharedPreferences.
///
/// The Connect client uses the same key, so whichever package initializes
/// first generates the UUID and the other reads it.
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

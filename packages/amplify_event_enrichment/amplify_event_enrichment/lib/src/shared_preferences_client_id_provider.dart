// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/src/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_event_enrichment.client_id_provider}
/// Provides the persistent client ID stamped on every enriched event.
///
/// The ID must be stable for the lifetime of the install. If
/// [getClientId] throws or returns an empty ID,
/// `EventEnrichmentClientFlutter.create` logs a warning and uses an ephemeral
/// ID for that client.
/// {@endtemplate}
// ignore: one_member_abstracts
abstract interface class ClientIdProvider {
  /// Returns the persistent, non-empty client ID, creating one if none is
  /// stored. Throws if a new ID cannot be persisted.
  Future<String> getClientId();
}

/// {@template amplify_event_enrichment.shared_preferences_client_id_provider}
/// Reads or creates a persistent client ID at [zClientIdStorageKey] in
/// SharedPreferences.
///
/// The Connect client reads or creates the same key the same way. Both use
/// the per-isolate `SharedPreferences.getInstance()` cache, which a write
/// updates before awaiting the platform, so concurrent calls in one isolate
/// resolve one ID. Separate isolates do not share that cache and can race.
/// {@endtemplate}
class SharedPreferencesClientIdProvider implements ClientIdProvider {
  /// {@macro amplify_event_enrichment.shared_preferences_client_id_provider}
  const SharedPreferencesClientIdProvider();

  /// Returns the stored ID, or creates and stores one when it is absent or
  /// empty. Throws a [StateError] if the platform rejects that write.
  @override
  Future<String> getClientId() async {
    final prefs = await SharedPreferences.getInstance();
    final existing = prefs.getString(zClientIdStorageKey);
    if (existing != null && existing.isNotEmpty) return existing;
    final id = const Uuid().v4();
    final persisted = await prefs.setString(zClientIdStorageKey, id);
    if (!persisted) {
      // The cache already holds the ID, so later reads would see it as stored.
      await prefs.remove(zClientIdStorageKey);
      throw StateError('Failed to persist the client ID');
    }
    return id;
  }
}

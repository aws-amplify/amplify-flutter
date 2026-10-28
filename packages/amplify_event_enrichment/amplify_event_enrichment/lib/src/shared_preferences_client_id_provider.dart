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
/// `EventEnrichmentClientFlutter.create` logs a warning and uses one ephemeral
/// ID for every client in the isolate that falls back.
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
/// Concurrent calls in one isolate share one lookup, and an ID this provider
/// creates is returned only once it is persisted. The Connect client writes the
/// same key itself, so either package can read the other's ID while that write
/// is pending. Separate isolates do not share this state.
/// {@endtemplate}
class SharedPreferencesClientIdProvider implements ClientIdProvider {
  /// {@macro amplify_event_enrichment.shared_preferences_client_id_provider}
  const SharedPreferencesClientIdProvider();

  /// Returns the stored ID, or creates and stores one when it is absent or
  /// empty. Throws a [StateError] if the platform rejects that write, or the
  /// platform's error if it throws.
  @override
  Future<String> getClientId() =>
      _pending ??= _readOrCreate().whenComplete(() => _pending = null);

  static Future<String>? _pending;

  Future<String> _readOrCreate() async {
    final prefs = await SharedPreferences.getInstance();
    final existing = prefs.getString(zClientIdStorageKey);
    if (existing != null && existing.isNotEmpty) return existing;
    final id = const Uuid().v4();
    // The cache already holds the ID, so later reads would see it as stored
    // unless a failed write removes it. Another writer's ID is left in place.
    final bool persisted;
    try {
      persisted = await prefs.setString(zClientIdStorageKey, id);
    } on Object {
      if (prefs.getString(zClientIdStorageKey) == id) {
        await prefs.remove(zClientIdStorageKey);
      }
      rethrow;
    }
    if (!persisted) {
      if (prefs.getString(zClientIdStorageKey) == id) {
        await prefs.remove(zClientIdStorageKey);
      }
      throw StateError('Failed to persist the client ID');
    }
    return id;
  }
}

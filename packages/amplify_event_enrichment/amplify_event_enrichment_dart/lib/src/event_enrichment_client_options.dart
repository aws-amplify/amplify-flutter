// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_event_enrichment.event_enrichment_client_options}
/// Configuration options for `EventEnrichmentClient`.
/// {@endtemplate}
final class EventEnrichmentClientOptions {
  /// {@macro amplify_event_enrichment.event_enrichment_client_options}
  const EventEnrichmentClientOptions({
    this.autoSessionTracking = true,
    this.sessionTimeout = const Duration(seconds: 5),
  });

  /// Whether to automatically start a session at construction and drive it
  /// from the app lifecycle.
  ///
  /// When `true` (the default), a session starts as soon as the client is
  /// constructed and follows app foreground/background transitions.
  ///
  /// When `false`, no session is started at construction. This does not
  /// disable session creation: the first `record()` call lazily starts a
  /// session, and manual session and lifecycle calls still work. It only opts
  /// out of eagerly starting a session up front.
  final bool autoSessionTracking;

  /// Duration the app can remain backgrounded before a new session starts.
  ///
  /// Defaults to 5 seconds.
  final Duration sessionTimeout;
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_event_enrichment.event_enrichment_client_options}
/// Configuration options for [EventEnrichmentClient].
/// {@endtemplate}
final class EventEnrichmentClientOptions {
  /// {@macro amplify_event_enrichment.event_enrichment_client_options}
  const EventEnrichmentClientOptions({
    this.autoSessionTracking = true,
    this.sessionTimeout = const Duration(seconds: 5),
  });

  /// Whether to automatically track sessions via app lifecycle.
  ///
  /// Defaults to `true`.
  final bool autoSessionTracking;

  /// Duration the app can remain backgrounded before a new session starts.
  ///
  /// Defaults to 5 seconds.
  final Duration sessionTimeout;
}

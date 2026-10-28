// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template amplify_event_enrichment.event_enrichment_client_options}
/// Session behavior for `EventEnrichmentClient`. Every field has a default, so
/// `const EventEnrichmentClientOptions()` gives the documented defaults.
/// {@endtemplate}
final class EventEnrichmentClientOptions
    with AWSEquatable<EventEnrichmentClientOptions>, AWSDebuggable {
  /// {@macro amplify_event_enrichment.event_enrichment_client_options}
  const EventEnrichmentClientOptions({
    this.autoSessionTracking = true,
    this.sessionTimeout = const Duration(seconds: 5),
    this.emitSessionEvents = true,
  });

  /// Whether to automatically start a session at construction and drive it
  /// from the app lifecycle.
  ///
  /// When `false`, no session is started at construction and no lifecycle
  /// observer is installed. This does not disable session creation: the first
  /// `record()` call lazily starts one, and manual session and lifecycle calls
  /// still work.
  ///
  /// Defaults to `true`.
  final bool autoSessionTracking;

  /// How long the app may stay backgrounded before the session ends and the
  /// next foreground starts a new one. Zero ends the session on the next timer
  /// tick after backgrounding. The client throws an [ArgumentError] for a
  /// negative value.
  ///
  /// Defaults to 5 seconds.
  final Duration sessionTimeout;

  /// Whether session starts and stops are sent as `_session.start` and
  /// `_session.stop` events. Sessions are tracked and stamped on every event
  /// either way.
  ///
  /// Defaults to `true`.
  final bool emitSessionEvents;

  @override
  List<Object?> get props => [
    autoSessionTracking,
    sessionTimeout,
    emitSessionEvents,
  ];

  @override
  String get runtimeTypeName => 'EventEnrichmentClientOptions';
}

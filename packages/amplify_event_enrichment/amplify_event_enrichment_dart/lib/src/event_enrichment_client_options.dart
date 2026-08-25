// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template amplify_event_enrichment.event_enrichment_client_options}
/// Configuration options for `EventEnrichmentClient`.
/// {@endtemplate}
final class EventEnrichmentClientOptions
    with AWSEquatable<EventEnrichmentClientOptions>, AWSDebuggable {
  /// {@macro amplify_event_enrichment.event_enrichment_client_options}
  const EventEnrichmentClientOptions({
    this.autoSessionTracking = true,
    this.sessionTimeout = const Duration(seconds: 5),
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
  /// next foreground starts a new one.
  ///
  /// Defaults to 5 seconds.
  final Duration sessionTimeout;

  @override
  List<Object?> get props => [autoSessionTracking, sessionTimeout];

  @override
  String get runtimeTypeName => 'EventEnrichmentClientOptions';
}

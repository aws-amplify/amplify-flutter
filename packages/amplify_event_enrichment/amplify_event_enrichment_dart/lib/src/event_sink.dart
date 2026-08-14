// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/enriched_event.dart';

/// {@template amplify_event_enrichment.event_sink}
/// Interface for transporting enriched events to a destination.
///
/// Implement this to pipe events to Kinesis, Firehose, or any custom
/// transport.
///
/// Sending is asynchronous: [send] returns a `Future` so the client can await
/// delivery and observe failures. Implementations that do no async work can
/// still return an already-completed future (an `async` method body with no
/// `await` is enough).
/// {@endtemplate}
abstract interface class EventSink {
  /// Sends an enriched event to the configured destination.
  ///
  /// May throw, or return a future that completes with an error, if delivery
  /// fails. `EventEnrichmentClient.record` awaits this call and converts a
  /// failure into an error `Result` after logging it, so a throwing sink never
  /// crashes the caller of `record`.
  Future<void> send(EnrichedEvent event);
}

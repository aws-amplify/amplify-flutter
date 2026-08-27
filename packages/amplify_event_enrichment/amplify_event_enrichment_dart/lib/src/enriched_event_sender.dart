// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/enriched_event.dart';

/// {@template amplify_event_enrichment.sender}
/// Interface for transporting enriched events to a destination, such as
/// Kinesis or Firehose.
///
/// Named `EnrichedEventSender` because the kinesis and firehose packages
/// export a `Sender` and `dart:async` exports an `EventSink`.
/// {@endtemplate}
abstract interface class EnrichedEventSender {
  /// Sends an enriched event to the configured destination.
  ///
  /// May throw, or return a future that completes with an error, if delivery
  /// fails. `EventEnrichmentClient.record` converts a failure into an error
  /// `Result`.
  Future<void> send(EnrichedEvent event);
}

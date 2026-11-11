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
  /// `Result`; a failed session event send is logged.
  ///
  /// Sends run one at a time, so this should return promptly. It must not
  /// call back into the client and await the result: that call waits behind
  /// this send.
  Future<void> send(EnrichedEvent event);
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/enriched_event.dart';

/// {@template amplify_event_enrichment.event_sink}
/// Interface for transporting enriched events to a destination.
///
/// Implement this to pipe events to Kinesis, Firehose, or any custom
/// transport.
/// {@endtemplate}
abstract interface class EventSink {
  /// Sends an enriched event to the configured destination.
  void send(EnrichedEvent event);
}

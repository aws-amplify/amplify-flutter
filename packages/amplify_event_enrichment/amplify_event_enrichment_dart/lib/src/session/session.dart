// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

/// {@template amplify_event_enrichment.session}
/// Represents an app session with start/stop timestamps and duration.
/// {@endtemplate}
@immutable
final class Session {
  /// {@macro amplify_event_enrichment.session}
  const Session({
    required this.id,
    required this.startTimestamp,
    this.stopTimestamp,
    this.duration,
  });

  /// Unique session identifier.
  final String id;

  /// ISO 8601 UTC timestamp when the session started.
  final String startTimestamp;

  /// ISO 8601 UTC timestamp when the session stopped.
  final String? stopTimestamp;

  /// Duration of the session in milliseconds.
  final int? duration;
}

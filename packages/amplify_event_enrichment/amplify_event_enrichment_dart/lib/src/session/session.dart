// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_event_enrichment.session}
/// Represents an app session with start/stop timestamps and duration.
/// {@endtemplate}
@immutable
final class Session with AWSEquatable<Session>, AWSDebuggable {
  /// {@macro amplify_event_enrichment.session}
  const Session({
    required this.id,
    required this.startTimestamp,
    this.stopTimestamp,
    this.duration,
  });

  /// Session identifier serialized as `session.id`.
  final String id;

  /// ISO 8601 UTC start time serialized as `session.start_timestamp`.
  final String startTimestamp;

  /// ISO 8601 UTC stop time serialized as `session.stop_timestamp`, `null`
  /// until the session ends.
  final String? stopTimestamp;

  /// Milliseconds from start to stop serialized as `session.duration`, `null`
  /// until the session ends.
  final int? duration;

  @override
  List<Object?> get props => [id, startTimestamp, stopTimestamp, duration];

  @override
  String get runtimeTypeName => 'Session';
}

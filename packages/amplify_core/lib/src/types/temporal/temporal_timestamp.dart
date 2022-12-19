// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

/// The Temporal.Timestamp scalar type represents the number of seconds that have elapsed
/// since 1970-01-01T00:00Z. Timestamps are serialized and deserialized as numbers.
/// Negative values are also accepted and these represent the number of seconds
/// til 1970-01-01T00:00Z.
@immutable
class TemporalTimestamp implements Comparable<TemporalTimestamp> {
  final int _secondsSinceEpoch;

  /// Constructs a new TemporalTimestamp at the current date.
  static TemporalTimestamp now() {
    return TemporalTimestamp(DateTime.now());
  }

  /// Constructs a new TemporalTimestamp from a Dart DateTime
  factory TemporalTimestamp(DateTime date) {
    var ms = date.millisecondsSinceEpoch;
    return TemporalTimestamp._((ms / 1000).round());
  }

  /// Constructs a new TemporalTimestamp from int seconds
  factory TemporalTimestamp.fromSeconds(int secondsSinceEpoch) {
    return TemporalTimestamp._(secondsSinceEpoch);
  }

  const TemporalTimestamp._(this._secondsSinceEpoch);

  /// Gets the number of seconds that have elapsed since the UNIX epoch.
  int toSeconds() {
    return _secondsSinceEpoch;
  }

  @override
  String toString() {
    return _secondsSinceEpoch.toString();
  }

  @override
  bool operator ==(Object other) =>
      other is TemporalTimestamp &&
      _secondsSinceEpoch == other._secondsSinceEpoch;

  @override
  int get hashCode => _secondsSinceEpoch.hashCode;

  @override
  int compareTo(TemporalTimestamp other) {
    return toSeconds().compareTo(other.toSeconds());
  }
}

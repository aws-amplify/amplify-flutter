/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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

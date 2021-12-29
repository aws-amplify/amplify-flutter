// https://awslabs.github.io/smithy/1.0/spec/core/model.html#trait-node-values
//
// If a number is provided, it represents Unix epoch seconds with optional
// millisecond precision. If a string is provided, it MUST be a valid RFC 3339
// string with no UTC offset and optional fractional precision
// (for example, 1985-04-12T23:20:50.52Z).

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:http_parser/http_parser.dart';
import 'package:smithy/src/serialization/json/timestamp.dart';

/// {@template aws.smithy.timestamp}
///
/// @{endtemplate}
class Timestamp {
  /// {@macro aws.smithy.timestamp}
  Timestamp(DateTime timestamp)
      : _timestamp = timestamp.copyWith(microsecond: 0).toUtc();

  /// {@macro aws.smithy.timestamp}
  Timestamp.now() : this(DateTime.now());

  /// {@macro aws.smithy.timestamp}
  factory Timestamp.parse(
    String timestamp, {
    TimestampSerializationFormat format = TimestampSerializationFormat.dateTime,
  }) {
    switch (format) {
      case TimestampSerializationFormat.dateTime:
        final dt = DateTime.parse(timestamp);
        return Timestamp(dt);
      case TimestampSerializationFormat.httpDate:
        final dt = parseHttpDate(timestamp);
        return Timestamp(dt);
      case TimestampSerializationFormat.epochSeconds:
        final secs = double.parse(timestamp);
        final millisecs = (secs * 1000).truncate();
        return Timestamp(DateTime.fromMillisecondsSinceEpoch(
          millisecs,
          isUtc: true,
        ));
    }
  }

  DateTime _timestamp;

  DateTime get asDateTime => _timestamp;

  @override
  String toString() => _timestamp.toIso8601String();

  String toJson(TimestampSerializationFormat format) {
    switch (format) {
      case TimestampSerializationFormat.dateTime:
        return toString();
      case TimestampSerializationFormat.httpDate:
        return formatHttpDate(_timestamp);
      case TimestampSerializationFormat.epochSeconds:
        return '${_timestamp.millisecondsSinceEpoch / 1000}';
    }
  }
}

class TimestampList<T extends Timestamp?> extends DelegatingList<T> {
  const TimestampList(List<T> timestamps) : super(timestamps);

  static TimestampList? dateTimeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    final decoded = jsonDecode(json) as List;
    final list = decoded
        .cast<String?>()
        .map(TimestampSerializer.dateTime.deserialize)
        .toList();
    return TimestampList(list);
  }
}

extension on DateTime {
  DateTime copyWith({
    int? day,
    int? month,
    int? year,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }
}

/// The format to use for serializing/deserializing a [Timestamp] as defined
/// by the [timestampFormat](https://awslabs.github.io/smithy/1.0/spec/core/protocol-traits.html?highlight=timestampformat#timestampformat-trait) trait.
enum TimestampSerializationFormat {
  /// {@template smithy.timestamp_format_datetime}
  /// Date time as defined by the date-time production in RFC3339 section 5.6
  /// with no UTC offset and optional fractional precision
  /// (for example, 1985-04-12T23:20:50.52Z).
  /// {@endtemplate}
  dateTime,

  /// {@template smithy.timestamp_format_httpdate}
  /// An HTTP date as defined by the IMF-fixdate production in RFC 7231#section-7.1.1.1
  /// (for example, Tue, 29 Apr 2014 18:30:38 GMT). Note that in addition to
  /// the IMF-fixdate format specified in the RFC, implementations MUST also
  /// support optional fractional seconds (for example, Sun, 02 Jan 2000 20:34:56.000 GMT).
  /// {@endtemplate}
  httpDate,

  /// {@template smithy.timestamp_format_epochseconds}
  /// Also known as Unix time, the number of seconds that have elapsed since
  /// 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970,
  /// with optional fractional precision (for example, 1515531081.1234).
  /// {@endtemplate}
  epochSeconds,
}

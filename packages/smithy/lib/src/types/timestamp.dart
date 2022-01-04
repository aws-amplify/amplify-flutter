// https://awslabs.github.io/smithy/1.0/spec/core/model.html#trait-node-values
//
// If a number is provided, it represents Unix epoch seconds with optional
// millisecond precision. If a string is provided, it MUST be a valid RFC 3339
// string with no UTC offset and optional fractional precision
// (for example, 1985-04-12T23:20:50.52Z).

import 'package:http_parser/http_parser.dart';
import 'package:smithy_ast/smithy_ast.dart';

/// {@template aws.smithy.timestamp}
///
/// @{endtemplate}
class Timestamp {
  /// {@macro aws.smithy.timestamp}
  Timestamp(DateTime timestamp)
      : _timestamp = timestamp.stripMicroseconds().toUtc();

  /// {@macro aws.smithy.timestamp}
  Timestamp.now() : this(DateTime.now());

  /// {@macro aws.smithy.timestamp}
  factory Timestamp.parse(
    Object timestamp, {
    TimestampFormat format = TimestampFormat.unknown,
  }) {
    if (format == TimestampFormat.unknown) {
      format = timestamp is String
          ? TimestampFormat.dateTime
          : TimestampFormat.epochSeconds;
    }
    switch (format) {
      case TimestampFormat.dateTime:
        final dt = DateTime.parse(timestamp as String);
        return Timestamp(dt);
      case TimestampFormat.httpDate:
        final dt = parseHttpDate(timestamp as String);
        return Timestamp(dt);
      case TimestampFormat.epochSeconds:
        final secs = timestamp as num;
        final millisecs = (secs * 1000).truncate();
        return Timestamp(DateTime.fromMillisecondsSinceEpoch(
          millisecs,
          isUtc: true,
        ));
      default:
        break;
    }
    throw ArgumentError('Invalid timestamp: $timestamp (format=$format)');
  }

  DateTime _timestamp;

  DateTime get asDateTime => _timestamp;

  @override
  String toString() => _timestamp.toIso8601String();

  Object format([TimestampFormat format = TimestampFormat.dateTime]) {
    switch (format) {
      case TimestampFormat.dateTime:
      case TimestampFormat.unknown:
        return toString();
      case TimestampFormat.httpDate:
        return formatHttpDate(_timestamp);
      case TimestampFormat.epochSeconds:
        return _timestamp.millisecondsSinceEpoch / 1000;
    }
  }
}

extension on DateTime {
  DateTime stripMicroseconds({
    int? day,
    int? month,
    int? year,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
    );
  }
}

// https://awslabs.github.io/smithy/1.0/spec/core/model.html#trait-node-values
//
// If a number is provided, it represents Unix epoch seconds with optional
// millisecond precision. If a string is provided, it MUST be a valid RFC 3339
// string with no UTC offset and optional fractional precision
// (for example, 1985-04-12T23:20:50.52Z).

import 'package:http_parser/http_parser.dart';
import 'package:intl/intl.dart';
import 'package:smithy_ast/smithy_ast.dart';

/// {@template aws.smithy.timestamp}
///
/// @{endtemplate}
class Timestamp {
  /// {@macro aws.smithy.timestamp}
  Timestamp(DateTime timestamp) : _timestamp = timestamp.stripMicroseconds();

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
        DateTime dt;
        try {
          dt = parseHttpDate(timestamp as String);
        } on FormatException {
          // Note that in addition to the IMF-fixdate format specified in the
          // RFC, implementations MUST also support optional fractional seconds
          // (for example, Sun, 02 Jan 2000 20:34:56.000 GMT).
          dt = _httpFormat.parse(timestamp as String, true);
        }
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

  static final _isoFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
  static final _httpFormat = DateFormat("EEE, dd MMM yyyy HH:mm:ss.SSS 'GMT'");

  @override
  String toString() => _isoFormat.format(_timestamp);

  Object format([TimestampFormat format = TimestampFormat.dateTime]) {
    switch (format) {
      case TimestampFormat.dateTime:
      case TimestampFormat.unknown:
        return toString();
      case TimestampFormat.httpDate:
        return formatHttpDate(_timestamp);
      case TimestampFormat.epochSeconds:
        return _timestamp.millisecondsSinceEpoch ~/ 1000;
    }
  }
}

extension on DateTime {
  DateTime stripMicroseconds() {
    final dt = toUtc();
    return DateTime.utc(
      dt.year,
      dt.month,
      dt.day,
      dt.hour,
      dt.minute,
      dt.second,
      dt.millisecond,
    );
  }
}

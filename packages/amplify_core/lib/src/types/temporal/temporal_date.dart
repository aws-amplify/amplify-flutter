// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

import 'temporal.dart';

/// Represents a valid extended ISO-8601 Date string, with an optional timezone offset.
/// YYYY-MM-DD±hh:mm:ss  (ISO_OFFSET_DATE)
/// or
/// YYYY-MM-DD (ISO_LOCAL_DATE)
/// https://docs.aws.amazon.com/appsync/latest/devguide/scalars.html#appsync-defined-scalars
@immutable
class TemporalDate implements Comparable<TemporalDate> {
  final DateTime _dateTime;
  final Duration? _offset;

  /// Constructs a new TemporalDate at the current date.
  static TemporalDate now() {
    return TemporalDate(DateTime.now());
  }

  /// Constructs a new TemporalDate from a Dart DateTime
  /// The time fields (hour, minute, second, etc) are ignored
  factory TemporalDate(DateTime dateTime) {
    dateTime = dateTime.toUtc();
    return TemporalDate._(
      DateTime.utc(
        dateTime.year,
        dateTime.month,
        dateTime.day,
      ),
    );
  }

  /// Constructs a new TemporalDate from a Dart DateTime and Duration
  /// The time fields (hour, minute, second, etc) are ignored
  factory TemporalDate.withOffset(DateTime dateTime, Duration offset) {
    if (offset.inDays > 0) {
      throw Exception('Cannot have an offset in days (hh:mm:ss)');
    }

    dateTime = dateTime.toUtc();
    return TemporalDate._(
      DateTime.utc(
        dateTime.year,
        dateTime.month,
        dateTime.day,
      ),
      offset,
    );
  }

  /// Constructs a new TemporalDate from a ISO8601 string adhering to the format:
  ///   YYYY-MM-DD
  ///   YYYY-MM-DDZ
  ///   without Z:
  ///     +hh:mm
  ///     +hh:mm:ss
  factory TemporalDate.fromString(String iso8601String) {
    // TODO: enforce month 1-12
    RegExp regExp = RegExp(
        r'^([0-9]{4}-[0-1][0-9]-[0-3][0-9])((z|Z)|((\+|-)[0-2][0-9]:[0-5][0-9](:[0-5][0-9])?))?',
        caseSensitive: false,
        multiLine: false);

    // Validate
    String? regexString = regExp.stringMatch(iso8601String);
    if (regexString == null || regexString != iso8601String) {
      throw const FormatException(
        'Invalid ISO8601 String Input\n\n'
        'Please provide an extended ISO 8601 date string in the format '
        'YYYY-MM-DD with an optional time zone offset \u00b1hh:mm:ss. '
        '${Temporal.genericDocErrorMessage}',
      );
    }

    // Remove Z
    regexString = iso8601String.replaceAll(RegExp(r'(z|Z)'), '');

    // Extract Date
    var match = regExp.matchAsPrefix(regexString)!;

    // Parse cannot take a YYYY-MM-DD as UTC!
    DateTime dateTime = DateTime.parse(match.group(1)!);
    dateTime = DateTime.utc(dateTime.year, dateTime.month, dateTime.day);

    // Extract Offset
    Duration? offset;
    if (match.group(2) != null && match.group(2)!.isNotEmpty) {
      offset = Temporal.offsetToDuration(match.group(2)!);
    } else if (iso8601String.toLowerCase().contains('z')) {
      offset = const Duration();
    }

    return TemporalDate._(dateTime, offset);
  }

  const TemporalDate._(this._dateTime, [this._offset]);

  /// Return offset
  Duration? getOffset() {
    return _offset;
  }

  /// Return DateTime
  DateTime getDateTime() {
    return _dateTime;
  }

  /// Return ISO8601 String of format YYYY-MM-DD+hh:mm:ss
  String format() {
    var buffer = StringBuffer();

    // Extract date portion of DateTime.ISO8601String
    buffer.write(_dateTime.toIso8601String().substring(0, 10));

    // Duration.toString returns string of form -9:30:00.000000 / 9:30:00.000000
    // But we need -09:30 / +09:30
    if (_offset != null) {
      if (_offset!.inSeconds == 0) {
        buffer.write('Z');
      } else {
        buffer.write(Temporal.durationToOffset(_offset!));
      }
    }

    return buffer.toString();
  }

  @override
  String toString() {
    return format();
  }

  @override
  bool operator ==(Object other) =>
      other is TemporalDate &&
      _dateTime == other._dateTime &&
      _offset == other._offset;

  @override
  int get hashCode => _dateTime.hashCode * _offset.hashCode;

  @override
  int compareTo(TemporalDate other) {
    return getDateTime().compareTo(other.getDateTime());
  }
}

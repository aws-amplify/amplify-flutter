// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/temporal/temporal.dart';
import 'package:meta/meta.dart';

/// Represents a valid extended ISO-8601 DateTime string.  The time zone offset is compulsory.
/// YYYY-MM-DDThh:mm:ss.sssZ  (ISO_OFFSET_DATE_TIME)
/// https://docs.aws.amazon.com/appsync/latest/devguide/scalars.html#appsync-defined-scalars
@immutable
class TemporalDateTime implements Comparable<TemporalDateTime> {
  /// Constructs a new TemporalDateTime from a Dart DateTime
  factory TemporalDateTime(DateTime dateTime) {
    dateTime = dateTime.toUtc();
    return TemporalDateTime._(
      DateTime.utc(
        dateTime.year,
        dateTime.month,
        dateTime.day,
        dateTime.hour,
        dateTime.minute,
        dateTime.second,
        dateTime.millisecond,
        dateTime.microsecond,
      ),
      // Always initialize Duration as offset is not optional for DateTime
      offset: Duration.zero,
    );
  }

  /// Constructs a new TemporalDateTime from a Dart DateTime and Duration
  factory TemporalDateTime.withOffset(DateTime dateTime, Duration offset) {
    if (offset.inDays > 0) {
      throw Exception('Cannot have an offset in days (hh:mm:ss)');
    }

    dateTime = dateTime.toUtc();
    return TemporalDateTime._(
      DateTime.utc(
        dateTime.year,
        dateTime.month,
        dateTime.day,
        dateTime.hour,
        dateTime.minute,
        dateTime.second,
        dateTime.millisecond,
        dateTime.microsecond,
      ),
      offset: offset,
    );
  }

  /// Constructs a new TemporalDate from a ISO8601 string adhering to the format:
  /// NOTE: Z or an offset is required
  ///   YYYY-MM-DDThh:mmZ
  ///   YYYY-MM-DDThh:mm:ssZ
  ///   YYYY-MM-DDThh:mm:ss.sssZ
  ///   without Z:
  ///     +hh:mm
  ///     +hh:mm:ss
  factory TemporalDateTime.fromString(String iso8601String) {
    final regExp = RegExp(
      r'^([0-9]{4}-[0-1][0-9]-[0-3][0-9]T[0-2][0-9]:[0-5][0-9](:[0-5][0-9](\.([0-9]{1,9}))?)?)((z|Z)|((\+|-)[0-2][0-9]:[0-5][0-9](:[0-5][0-9])?))',
      caseSensitive: false,
      multiLine: false,
    );

    // Validate
    final regexString = regExp.stringMatch(iso8601String);
    if (regexString == null || regexString != iso8601String) {
      throw const FormatException(
        'Invalid ISO8601 String Input\n\n'
        'Please provide an extended ISO 8601 datetime string in the format '
        'YYYY-MM-DDThh:mm:ss with an optional time zone offset \u00b1hh:mm:ss. '
        '${Temporal.genericDocErrorMessage}',
      );
    }

    if (regexString != iso8601String) {
      throw Exception('invalid string input');
    }

    // Extract Time
    final match = regExp.matchAsPrefix(regexString)!;

    // Parse cannot take a YYYY-MM-DD as UTC!
    var dateTime = DateTime.parse(match.group(1)!.split('.')[0]);

    final totalNanoseconds =
        Temporal.getIntOr0(match.group(4)?.padRight(9, '0'));
    final milliseconds = totalNanoseconds ~/ 1000000;
    final microseconds = (totalNanoseconds ~/ 1000) % 1000;
    final nanoseconds = totalNanoseconds % 1000;

    dateTime = DateTime.utc(
      dateTime.year,
      dateTime.month,
      dateTime.day,
      dateTime.hour,
      dateTime.minute,
      dateTime.second,
      milliseconds,
      microseconds,
    );

    Duration? offset;
    if (match.group(7) != null && match.group(7)!.isNotEmpty) {
      offset = Temporal.offsetToDuration(match.group(7)!);
    } else {
      offset = Duration.zero;
    }

    return TemporalDateTime._(
      dateTime,
      nanoseconds: nanoseconds,
      offset: offset,
    );
  }

  const TemporalDateTime._(
    this._dateTime, {
    int nanoseconds = 0,
    Duration? offset,
  })  : _nanoseconds = nanoseconds,
        _offset = offset;
  final DateTime _dateTime;
  final int _nanoseconds;
  final Duration? _offset;

  /// Constructs a new TemporalDateTime at the current date
  static TemporalDateTime now() {
    return TemporalDateTime(DateTime.now());
  }

  /// Return offset
  Duration? getOffset() {
    return _offset;
  }

  /// Returns DateTime in UTC
  DateTime getDateTimeInUtc() {
    return _dateTime;
  }

  /// Return ISO8601 String of format YYYY-MM-DDThh:mm:ss.sss+hh:mm:ss
  String format() {
    final buffer = StringBuffer();

    // DateTime with millisecond/microsecond leads to variable length ISO String
    final simpleDateTime = DateTime(
      _dateTime.year,
      _dateTime.month,
      _dateTime.day,
      _dateTime.hour,
      _dateTime.minute,
      _dateTime.second,
    );
    final isoString = simpleDateTime.toIso8601String();
    buffer.write(isoString.substring(0, isoString.length - 4));

    final totalMicroseconds = _nanoseconds + Temporal.getNanoseconds(_dateTime);
    // ensure DateTime strings stored in SQLite to be in the same format
    // and string based DataTime comparison to be accurate
    buffer.write('.${totalMicroseconds.toString().padLeft(9, '0')}');

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
      other is TemporalDateTime &&
      _dateTime == other._dateTime &&
      _offset == other._offset &&
      _nanoseconds == other._nanoseconds;

  @override
  int get hashCode =>
      _dateTime.hashCode * _offset.hashCode * _nanoseconds.hashCode;

  @override
  int compareTo(TemporalDateTime other) {
    return getDateTimeInUtc().compareTo(other.getDateTimeInUtc());
  }
}

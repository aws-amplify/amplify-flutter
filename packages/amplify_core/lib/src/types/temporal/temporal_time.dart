// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/temporal/temporal.dart';
import 'package:meta/meta.dart';

/// Represents a valid extended ISO-8601 Time string, with an optional timezone offset.
/// hh:mm:ss.sss±hh:mm:ss
/// hh:mm:ss.sss
/// https://docs.aws.amazon.com/appsync/latest/devguide/scalars.html#appsync-defined-scalars
@immutable
class TemporalTime implements Comparable<TemporalTime> {
  /// Constructs a new TemporalTime from a Dart DateTime
  /// The date fields (year, month, day) are ignored
  factory TemporalTime(DateTime dateTime) {
    dateTime = dateTime.toUtc();
    return TemporalTime._(
      DateTime.utc(
        1970,
        1,
        1,
        dateTime.hour,
        dateTime.minute,
        dateTime.second,
        dateTime.millisecond,
        dateTime.microsecond,
      ),
    );
  }

  /// Constructs a new TemporalTime from a Dart DateTime and Duration
  /// The date fields (year, month, day) are ignored
  factory TemporalTime.withOffset(DateTime dateTime, Duration offset) {
    if (offset.inDays > 0) {
      throw Exception('Cannot have an offset in days (hh:mm:ss)');
    }

    dateTime = dateTime.toUtc();
    return TemporalTime._(
      DateTime.utc(
        1970,
        1,
        1,
        dateTime.hour,
        dateTime.minute,
        dateTime.second,
        dateTime.millisecond,
        dateTime.microsecond,
      ),
      offset: offset,
    );
  }

  /// Constructs a new TemporalTime from a ISO8601 string adhering to the format:
  ///  hh:mm
  ///  hh:mmZ
  ///  hh:mm:ss
  ///  hh:mm:ssZ
  ///  hh:mm:ss.sss
  ///  hh:mm:ss.sssZ
  ///  without Z:
  ///    +hh:mm
  ///    +hh:mm:ss
  factory TemporalTime.fromString(String iso8601String) {
    final regExp = RegExp(
      r'^([0-2][0-9]):([0-5][0-9])(:([0-5][0-9])(\.([0-9]{1,9}))?)?((z|Z)|((\+|-)[0-2][0-9]:[0-5][0-9](:[0-5][0-9])?))?',
      caseSensitive: false,
      multiLine: false,
    );

    // Validate
    var regexString = regExp.stringMatch(iso8601String);
    if (regexString == null || regexString != iso8601String) {
      throw const FormatException(
        'Invalid ISO8601 String Input\n\n'
        'Please provide an extended ISO 8601 time string in the format '
        'hh:mm:ss.sss with an optional time zone offset \u00b1hh:mm:ss. '
        '${Temporal.genericDocErrorMessage}',
      );
    }

    // Remove Z
    regexString = iso8601String.replaceAll(RegExp(r'(z|Z)'), '');

    // Extract Time
    final match = regExp.matchAsPrefix(regexString)!;

    final hours = int.parse(match.group(1)!);
    final minutes = int.parse(match.group(2)!);
    final seconds = Temporal.getIntOr0(match.group(4));

    final totalNanoseconds =
        Temporal.getIntOr0(match.group(6)?.padRight(9, '0'));
    final milliseconds = totalNanoseconds ~/ 1000000;
    final microseconds = (totalNanoseconds ~/ 1000) % 1000;
    final nanoseconds = totalNanoseconds % 1000;

    // Extract Offset
    Duration? offset;
    if (match.group(7) != null && match.group(7)!.isNotEmpty) {
      offset = Temporal.offsetToDuration(match.group(7)!);
    } else if (iso8601String.toLowerCase().contains('z')) {
      offset = Duration.zero;
    }

    return TemporalTime._(
      DateTime.utc(
        1970,
        1,
        1,
        hours,
        minutes,
        seconds,
        milliseconds,
        microseconds,
      ),
      nanoseconds: nanoseconds,
      offset: offset,
    );
  }

  const TemporalTime._(
    this._dateTime, {
    int nanoseconds = 0,
    Duration? offset,
  })  : _nanoseconds = nanoseconds,
        _offset = offset;
  final DateTime _dateTime;
  final int _nanoseconds; // DateTime only stores millisecond and microsecond
  final Duration? _offset;

  /// Constructs a new TemporalTime at the current date.
  static TemporalTime now() {
    return TemporalTime(DateTime.now());
  }

  /// Return offset
  Duration? getOffset() {
    return _offset;
  }

  /// Return DateTime
  /// Date fields are set as January 1, 1970.
  DateTime getDateTime() {
    return _dateTime;
  }

  /// Return ISO8601 String of format hh:mm:ss.sss+hh:mm:ss
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
    buffer.write(simpleDateTime.toIso8601String().substring(11, 19));

    final totalMicroseconds = _nanoseconds + Temporal.getNanoseconds(_dateTime);
    if (totalMicroseconds > 0) {
      buffer.write('.${totalMicroseconds.toString().padLeft(9, '0')}');
    }

    if (_offset != null) {
      if (_offset.inSeconds == 0) {
        buffer.write('Z');
      } else {
        buffer.write(Temporal.durationToOffset(_offset));
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
      other is TemporalTime &&
      _dateTime == other._dateTime &&
      _offset == other._offset &&
      _nanoseconds == other._nanoseconds;

  @override
  int get hashCode =>
      _dateTime.hashCode * _offset.hashCode * _nanoseconds.hashCode;

  @override
  int compareTo(TemporalTime other) {
    return getDateTime().compareTo(other.getDateTime());
  }
}

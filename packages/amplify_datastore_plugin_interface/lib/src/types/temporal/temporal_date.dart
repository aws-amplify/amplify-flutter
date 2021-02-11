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

import 'package:amplify_core/types/exception/AmplifyException.dart';

import 'temporal.dart';

/// Represents a valid extended ISO-8601 Date string, with an optional timezone offset.
/// YYYY-MM-DD±hh:mm:ss  (ISO_OFFSET_DATE)
/// or
/// YYYY-MM-DD (ISO_LOCAL_DATE)
/// https://docs.aws.amazon.com/appsync/latest/devguide/scalars.html#appsync-defined-scalars
class TemporalDate {
  DateTime _dateTime;
  Duration _offset;

  /// Constructs a new TemporalDate at the current date.
  static TemporalDate now() {
    return TemporalDate(DateTime.now());
  }

  /// Constructs a new TemporalDate from a Dart DateTime
  /// The time fields (hour, minute, second, etc) are ignored
  TemporalDate(DateTime dateTime) {
    dateTime = dateTime.toUtc();
    _dateTime = DateTime.utc(
      dateTime.year,
      dateTime.month,
      dateTime.day,
    );
  }

  /// Constructs a new TemporalDate from a Dart DateTime and Duration
  /// The time fields (hour, minute, second, etc) are ignored
  TemporalDate.withOffset(DateTime dateTime, Duration offset) {
    dateTime = dateTime.toUtc();
    _dateTime = DateTime.utc(
      dateTime.year,
      dateTime.month,
      dateTime.day,
    );

    if (offset.inDays > 0) {
      throw new Exception("Cannot have an offset in days (hh:mm:ss)");
    }

    _offset = offset;
  }

  /// Constructs a new TemporalDate from a ISO8601 string adhering to the format:
  ///   YYYY-MM-DD
  ///   YYYY-MM-DDZ
  ///   without Z:
  ///     +hh:mm
  ///     +hh:mm:ss
  TemporalDate.fromString(String iso8601String) {
    // TODO: enforce month 1-12
    RegExp regExp = new RegExp(
        r'^([0-9]{4}-[0-1][0-9]-[0-3][0-9])((z|Z)|((\+|-)[0-2][0-9]:[0-5][0-9](:[0-5][0-9])?))?',
        caseSensitive: false,
        multiLine: false);

    // Validate
    String regexString = regExp.stringMatch(iso8601String);
    if (regexString != iso8601String) {
      throw AmplifyException("Invalid ISO8601 String Input",
          recoverySuggestion:
              "Please provide an extended ISO 8601 date string in the format YYYY-MM-DD with an optional time zone offset ±hh:mm:ss.  " +
                  Temporal.genericDocErrorMessage);
    }

    // Remove Z
    regexString = iso8601String.replaceAll(new RegExp(r'(z|Z)'), '');

    // Extract Date
    var match = regExp.matchAsPrefix(regexString);

    // Parse cannot take a YYYY-MM-DD as UTC!
    DateTime dateTime = DateTime.parse(match.group(1));
    _dateTime = DateTime.utc(dateTime.year, dateTime.month, dateTime.day);

    // Extract Offset
    if (match.group(2) != null && match.group(2).isNotEmpty)
      _offset = Temporal.offsetToDuration(match.group(2));
    else if (iso8601String.toLowerCase().contains("z")) _offset = Duration();
  }

  /// Return offset
  Duration getOffset() {
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
      if (_offset.inSeconds == 0) {
        buffer.write("Z");
      } else {
        buffer.write(Temporal.durationToOffset(_offset));
      }
    }

    return buffer.toString();
  }

  String toString() {
    return format();
  }

  bool operator ==(o) =>
      o is TemporalDate && _dateTime == o._dateTime && _offset == o._offset;

  int get hashCode => _dateTime.hashCode * _offset.hashCode;
}

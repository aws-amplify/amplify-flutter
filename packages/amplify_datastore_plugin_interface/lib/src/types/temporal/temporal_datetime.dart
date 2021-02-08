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

/// Represents a valid extended ISO-8601 DateTime string.  The time zone offset is compulsory.
/// YYYY-MM-DDThh:mm:ss.sssZ  (ISO_OFFSET_DATE_TIME)
/// https://docs.aws.amazon.com/appsync/latest/devguide/scalars.html#appsync-defined-scalars
class TemporalDateTime {
  DateTime _dateTime;
  int _nanoseconds = 0;
  Duration _offset;

  /// Constructs a new TemporalDateTime at the current date
  static TemporalDateTime now() {
    return TemporalDateTime(DateTime.now());
  }

  /// Constructs a new TemporalDateTime from a Dart DateTime
  TemporalDateTime(DateTime dateTime) {
    dateTime = dateTime.toUtc();
    _dateTime = DateTime.utc(
        dateTime.year,
        dateTime.month,
        dateTime.day,
        dateTime.hour,
        dateTime.minute,
        dateTime.second,
        dateTime.millisecond,
        dateTime.microsecond);
    // Always initialize Duration as offset is not optional for DateTime
    _offset = Duration();
  }

  /// Constructs a new TemporalDateTime from a Dart DateTime and Duration
  TemporalDateTime.withOffset(DateTime dateTime, Duration offset) {
    dateTime = dateTime.toUtc();
    _dateTime = DateTime.utc(
        dateTime.year,
        dateTime.month,
        dateTime.day,
        dateTime.hour,
        dateTime.minute,
        dateTime.second,
        dateTime.millisecond,
        dateTime.microsecond);

    if (offset.inDays > 0) {
      throw new Exception("Cannot have an offset in days (hh:mm:ss)");
    }

    _offset = offset;
  }

  /// Constructs a new TemporalDate from a ISO8601 string adhering to the format:
  /// NOTE: Z or an offset is required
  ///   YYYY-MM-DDThh:mmZ
  ///   YYYY-MM-DDThh:mm:ssZ
  ///   YYYY-MM-DDThh:mm:ss.sssZ
  ///   without Z:
  ///     +hh:mm
  ///     +hh:mm:ss
  TemporalDateTime.fromString(String iso8601String) {
    RegExp regExp = new RegExp(
        r'^([0-9]{4}-[0-1][0-9]-[0-3][0-9]T[0-2][0-9]:[0-5][0-9](:[0-5][0-9](\.([0-9]{1,9}))?)?)((z|Z)|((\+|-)[0-2][0-9]:[0-5][0-9](:[0-5][0-9])?))',
        caseSensitive: false,
        multiLine: false);

    // Validate
    String regexString = regExp.stringMatch(iso8601String);
    if (regexString != iso8601String) {
      throw AmplifyException("Invalid ISO8601 String Input",
          recoverySuggestion:
              "Please provide an extended ISO 8601 datetime string in the format YYYY-MM-DDThh:mm:ss with an optional time zone offset ±hh:mm:ss.  " +
                  Temporal.genericDocErrorMessage);
    }

    if (regexString != iso8601String) {
      throw new Exception("invalid string input");
    }

    // Extract Time
    var match = regExp.matchAsPrefix(regexString);

    // Parse cannot take a YYYY-MM-DD as UTC!
    DateTime dateTime = DateTime.parse(match.group(1).split(".")[0]);

    int totalNanoseconds = Temporal.getIntOr0(match.group(4));
    int milliseconds = totalNanoseconds ~/ 1000000;
    int microseconds = (totalNanoseconds ~/ 1000) % 1000;
    _nanoseconds = totalNanoseconds % 1000;

    _dateTime = DateTime.utc(
        dateTime.year,
        dateTime.month,
        dateTime.day,
        dateTime.hour,
        dateTime.minute,
        dateTime.second,
        milliseconds,
        microseconds);

    if (match.group(7) != null && match.group(7).isNotEmpty)
      _offset = Temporal.offsetToDuration(match.group(7));
    else // if no offset, z is always present
      _offset = Duration();
  }

  /// Return offset
  Duration getOffset() {
    return _offset;
  }

  /// Returns DateTime in UTC
  DateTime getDateTimeInUtc() {
    return _dateTime;
  }

  /// Return ISO8601 String of format YYYY-MM-DDThh:mm:ss.sss+hh:mm:ss
  String format() {
    var buffer = StringBuffer();

    // DateTime with millisecond/microsecond leads to variable length ISO String
    DateTime simpleDateTime = DateTime(_dateTime.year, _dateTime.month,
        _dateTime.day, _dateTime.hour, _dateTime.minute, _dateTime.second);
    String isoString = simpleDateTime.toIso8601String();
    buffer.write(isoString.substring(0, isoString.length - 4));

    int totalMicroseconds = _nanoseconds + Temporal.getNanoseconds(_dateTime);
    if (totalMicroseconds > 0) {
      buffer.write("." + totalMicroseconds.toString().padLeft(9, "0"));
    }

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
      o is TemporalDateTime &&
      _dateTime == o._dateTime &&
      _offset == o._offset &&
      _nanoseconds == o._nanoseconds;
  int get hashCode =>
      _dateTime.hashCode * _offset.hashCode * _nanoseconds.hashCode;
}

import 'package:date_time_format/date_time_format.dart';

import 'temporal.dart';

///
class TemporalDate {
  DateTime _dateTime;
  Duration _offset;
  bool _hasZ =
      false; // fromString only - Need to track between YYYY-MM-DD vs YYYY-MM-DDZ

  ///
  static TemporalDate now() {
    return TemporalDate(DateTime.now());
  }

  ///
  TemporalDate(DateTime dateTime) {
    dateTime = dateTime.toUtc();
    _dateTime = DateTime.utc(
      dateTime.year,
      dateTime.month,
      dateTime.day,
    );
  }

  ///
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

  // YYYY-MM-DD
  // YYYY-MM-DDZ
  // without Z:
  //   +hh:mm
  //   +hh:mm:ss
  TemporalDate.fromString(String iso8601String) {
    // TODO: enforce month 1-12
    RegExp regExp = new RegExp(
        r'^([0-9]{4}-[0-1][0-9]-[0-3][0-9])((z|Z)|((\+|-)[0-2][0-9]:[0-5][0-9](:[0-5][0-9])?))?',
        caseSensitive: false,
        multiLine: false);

    // Validate
    String regexString = regExp.stringMatch(iso8601String);
    if (regexString != iso8601String) {
      throw new Exception("invalid string input");
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
      _offset = Temporal.stringToOffset(match.group(2));
    else if (iso8601String.toLowerCase().contains("z")) _hasZ = true;
  }

  Duration getOffset() {
    return _offset;
  }

  // return DateTime with offset added
  //Date is set as January 1, 1970.
  DateTime toDateTime() {
    return _offset == null ? _dateTime : _dateTime.subtract(_offset);
  }

  // YYYY-MM-DD-hh:mm:ss
  String format() {
    var buffer = StringBuffer();

    // Extract date portion of DateTime.ISO8601String
    buffer.write(_dateTime.toIso8601String().substring(0, 10));

    // Duration.toString returns string of form -9:30:00.000000 / 9:30:00.000000
    // But we need -09:30 / +09:30
    if (_offset != null) {
      buffer.write(Temporal.durationToString(_offset));
    } else if (_hasZ) {
      buffer.write("Z");
    }

    return buffer.toString();
  }

  bool operator ==(o) =>
      o is TemporalDate &&
      _dateTime == o._dateTime &&
      _offset == o._offset &&
      _hasZ == o._hasZ;
  int get hashCode => _dateTime.hashCode * _offset.hashCode * _hasZ.hashCode;
}

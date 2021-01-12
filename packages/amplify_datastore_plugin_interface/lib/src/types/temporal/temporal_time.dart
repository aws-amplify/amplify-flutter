import 'temporal.dart';

///
class TemporalTime {
  DateTime _dateTime;
  int _nanoseconds; // DateTime only stores millisecond and microsecond
  Duration _offset;
  bool _hasZ =
      false; // fromString only - Need to track between hh:mm:ss vs hh:mm:ssZ

  ///
  static TemporalTime now() {
    return TemporalTime(DateTime.now());
  }

  ///
  TemporalTime(DateTime dateTime) {
    dateTime = dateTime.toUtc();
    _dateTime = DateTime.utc(
        1970, 1, 1, dateTime.hour, dateTime.minute, dateTime.second);
    _nanoseconds =
        (dateTime.millisecond * 1000000) + (dateTime.microsecond * 1000);
  }

  ///
  TemporalTime.withOffset(DateTime dateTime, Duration offset) {
    dateTime = dateTime.toUtc();
    _dateTime = DateTime.utc(
        1970, 1, 1, dateTime.hour, dateTime.minute, dateTime.second);
    _nanoseconds =
        (dateTime.millisecond * 1000000) + (dateTime.microsecond * 1000);

    if (offset.inDays > 0) {
      throw new Exception("Cannot have an offset in days (hh:mm:ss)");
    }

    _offset = offset;
  }

  //hh:mm
  //hh:mmZ
  //hh:mm:ss
  //hh:mm:ssZ
  //hh:mm:ss.sss
  //hh:mm:ss.sssZ
  // without Z:
  //   +hh:mm
  //   +hh:mm:ss
  TemporalTime.fromString(String iso8601String) {
    RegExp regExp = new RegExp(
        r'^([0-2][0-9]):([0-5][0-9])(:([0-5][0-9])(.([0-9]{1,9}))?)?((z|Z)|((\+|-)[0-2][0-9]:[0-5][0-9](:[0-5][0-9])?))?',
        caseSensitive: false,
        multiLine: false);

    // Validate
    String regexString = regExp.stringMatch(iso8601String);
    if (regexString != iso8601String) {
      throw new Exception("invalid string input");
    }

    // Remove Z
    regexString = iso8601String.replaceAll(new RegExp(r'(z|Z)'), '');

    // Extract Time
    var match = regExp.matchAsPrefix(regexString);

    int hours = int.parse(match.group(1));
    int minutes = int.parse(match.group(2));
    int seconds = Temporal.getIntOr0(match.group(4));
    _nanoseconds = Temporal.getIntOr0(match.group(6));
    //int milliseconds =

    _dateTime = DateTime.utc(1970, 1, 1, hours, minutes, seconds);

    // Extract Offset
    if (match.group(7) != null && match.group(7).isNotEmpty)
      _offset = Temporal.stringToOffset(match.group(7));
    else if (iso8601String.toLowerCase().contains("z")) _hasZ = true;
  }

  Duration getOffset() {
    return _offset;
  }

  // Date is set as January 1, 1970.
  DateTime toDateTime() {
    DateTime toReturn =
        _offset == null ? _dateTime : _dateTime.subtract(_offset);

    // Approximate addition of nanoseconds
    if (_nanoseconds > 0) {
      toReturn = toReturn.add(Temporal.nanosecondsToDuration(_nanoseconds));
    }

    return toReturn;
  }

  // hh:mm:ss.sss+hh:mm:ss
  String format() {
    var buffer = StringBuffer();

    buffer.write(_dateTime.toIso8601String().substring(11, 19));

    if (_nanoseconds > 0) {
      buffer.write("." + _nanoseconds.toString().padLeft(9, "0"));
    }

    if (_offset != null) {
      buffer.write(Temporal.durationToString(_offset));
    } else if (_hasZ) {
      buffer.write("Z");
    }

    return buffer.toString();
  }

  bool operator ==(o) =>
      o is TemporalTime &&
      _dateTime == o._dateTime &&
      _offset == o._offset &&
      _hasZ == o._hasZ &&
      _nanoseconds == o._nanoseconds;
  int get hashCode =>
      _dateTime.hashCode *
      _offset.hashCode *
      _hasZ.hashCode *
      _nanoseconds.hashCode;
}

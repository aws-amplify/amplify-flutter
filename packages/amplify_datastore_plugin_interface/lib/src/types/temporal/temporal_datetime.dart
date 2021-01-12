import 'temporal.dart';

class TemporalDateTime {
  DateTime _dateTime;
  int _nanoseconds;
  Duration _offset;

  ///
  static TemporalDateTime now() {
    return TemporalDateTime(DateTime.now());
  }

  ///
  TemporalDateTime(DateTime dateTime) {
    dateTime = dateTime.toUtc();
    _dateTime = DateTime.utc(dateTime.year, dateTime.month, dateTime.day,
        dateTime.hour, dateTime.minute, dateTime.second);
    _nanoseconds =
        (dateTime.millisecond * 1000000) + (dateTime.microsecond * 1000);
  }

  ///
  TemporalDateTime.withOffset(DateTime dateTime, Duration offset) {
    dateTime = dateTime.toUtc();
    _dateTime = DateTime.utc(dateTime.year, dateTime.month, dateTime.day,
        dateTime.hour, dateTime.minute, dateTime.second);
    _nanoseconds =
        (dateTime.millisecond * 1000000) + (dateTime.microsecond * 1000);

    if (offset.inDays > 0) {
      throw new Exception("Cannot have an offset in days (hh:mm:ss)");
    }

    _offset = offset;
  }

  // DateTime Z is required
  //YYYY-MM-DDThh:mmZ
  //YYYY-MM-DDThh:mm:ssZ
  //YYYY-MM-DDThh:mm:ss.sssZ
  // without Z:
  //   +hh:mm
  //   +hh:mm:ss
  TemporalDateTime.fromString(String iso8601String) {
    RegExp regExp = new RegExp(
        r'^([0-9]{4}-[0-1][0-9]-[0-3][0-9]T[0-2][0-9]:[0-5][0-9](:[0-5][0-9](.([0-9]{1,9}))?)?)((z|Z)|((\+|-)[0-2][0-9]:[0-5][0-9](:[0-5][0-9])?))',
        caseSensitive: false,
        multiLine: false);

    // Validate
    String regexString = regExp.stringMatch(iso8601String);
    if (regexString != iso8601String) {
      throw new Exception("invalid string input");
    }

    // Extract Time
    var match = regExp.matchAsPrefix(regexString);

    // Parse cannot take a YYYY-MM-DD as UTC!
    DateTime dateTime = DateTime.parse(match.group(1).split(".")[0]);
    _dateTime = DateTime.utc(dateTime.year, dateTime.month, dateTime.day,
        dateTime.hour, dateTime.minute, dateTime.second);
    _nanoseconds = Temporal.getIntOr0(match.group(4));

    if (match.group(7) != null && match.group(7).isNotEmpty)
      _offset = Temporal.stringToOffset(match.group(7));
  }

  Duration getOffset() {
    return _offset;
  }

  DateTime toDateTime() {
    DateTime toReturn =
        _offset == null ? _dateTime : _dateTime.subtract(_offset);

    // Approximate addition of nanoseconds
    if (_nanoseconds > 0) {
      toReturn = toReturn.add(Temporal.nanosecondsToDuration(_nanoseconds));
    }

    return toReturn;
  }

  String format() {
    var buffer = StringBuffer();

    String isoString = _dateTime.toIso8601String();

    buffer.write(isoString.substring(0, isoString.length - 5));

    if (_nanoseconds > 0) {
      buffer.write("." + _nanoseconds.toString().padLeft(9, "0"));
    }

    if (_offset != null) {
      buffer.write(Temporal.durationToString(_offset));
    } else {
      buffer.write("Z");
    }

    return buffer.toString();
  }

  bool operator ==(o) =>
      o is TemporalDateTime &&
      _dateTime == o._dateTime &&
      _offset == o._offset &&
      _nanoseconds == o._nanoseconds;
  int get hashCode =>
      _dateTime.hashCode * _offset.hashCode * _nanoseconds.hashCode;
}

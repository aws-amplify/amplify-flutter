class Temporal {
  static durationToString(Duration duration) {
    var buffer = StringBuffer();

    buffer.write(duration.isNegative ? "-" : "+");

    Duration _absOffset = duration.abs();

    buffer.write(_absOffset.inHours.toString().padLeft(2, "0"));

    buffer.write(":" + (_absOffset.inMinutes % 60).toString().padLeft(2, "0"));

    if (_absOffset.inSeconds % 60 != 0) {
      buffer
          .write(":" + (_absOffset.inSeconds % 60).toString().padLeft(2, "0"));
    }

    return buffer.toString();
  }

  static Duration stringToOffset(String offsetString) {
    RegExp regExp = new RegExp(
        r'^(\+|-)([0-2][0-9]):([0-5][0-9])(:([0-5][0-9]))?',
        caseSensitive: false,
        multiLine: false);

    var match = regExp.matchAsPrefix(offsetString);

    int sign = match.group(1) == "+" ? 1 : -1;
    int hours = sign * Temporal.getIntOr0(match.group(2));
    int minutes = sign * Temporal.getIntOr0(match.group(3));
    int seconds = sign * Temporal.getIntOr0(match.group(5));
    return Duration(hours: hours, minutes: minutes, seconds: seconds);
  }

  static int getIntOr0(String toParse) {
    return toParse != null ? int.parse(toParse) : 0;
  }

  static Duration nanosecondsToDuration(int nanoseconds) {
    int milli = (nanoseconds ~/ 1000000);
    int micro = ((nanoseconds - (milli * 1000000)) ~/ 1000);
    return Duration(milliseconds: milli, microseconds: micro);
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

class Temporal {
  static const genericDocErrorMessage =
      'For more information on acceptable string formats please visit https://docs.aws.amazon.com/appsync/latest/devguide/scalars.html';

  static String durationToOffset(Duration duration) {
    var buffer = StringBuffer();
    buffer.write(duration.isNegative ? '-' : '+');

    Duration absOffset = duration.abs();
    buffer.write(absOffset.inHours.toString().padLeft(2, '0'));
    buffer
      ..write(':')
      ..write((absOffset.inMinutes % 60).toString().padLeft(2, '0'));

    if (absOffset.inSeconds % 60 != 0) {
      buffer
        ..write(':')
        ..write((absOffset.inSeconds % 60).toString().padLeft(2, '0'));
    }

    return buffer.toString();
  }

  static Duration offsetToDuration(String offsetString) {
    RegExp regExp = RegExp(r'^(\+|-)([0-2][0-9]):([0-5][0-9])(:([0-5][0-9]))?',
        caseSensitive: false, multiLine: false);

    Match? match = regExp.matchAsPrefix(offsetString);
    if (match == null) {
      return const Duration();
    }

    int sign = match.group(1) == '+' ? 1 : -1;
    int hours = sign * Temporal.getIntOr0(match.group(2));
    int minutes = sign * Temporal.getIntOr0(match.group(3));
    int seconds = sign * Temporal.getIntOr0(match.group(5));
    return Duration(hours: hours, minutes: minutes, seconds: seconds);
  }

  static int getIntOr0(String? toParse) {
    return toParse != null ? int.parse(toParse) : 0;
  }

  static Duration nanosecondsToDuration(int nanoseconds) {
    int milli = (nanoseconds ~/ 1000000);
    int micro = ((nanoseconds - (milli * 1000000)) ~/ 1000);
    return Duration(milliseconds: milli, microseconds: micro);
  }

  static int getNanoseconds(DateTime dateTime) {
    return (dateTime.millisecond * 1000000) + (dateTime.microsecond * 1000);
  }
}

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

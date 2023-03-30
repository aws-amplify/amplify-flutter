// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: avoid_classes_with_only_static_members
class Temporal {
  static const genericDocErrorMessage =
      'For more information on acceptable string formats please visit https://docs.aws.amazon.com/appsync/latest/devguide/scalars.html';

  static String durationToOffset(Duration duration) {
    final buffer = StringBuffer()..write(duration.isNegative ? '-' : '+');

    final absOffset = duration.abs();
    buffer
      ..write(absOffset.inHours.toString().padLeft(2, '0'))
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
    final regExp = RegExp(
      r'^(\+|-)([0-2][0-9]):([0-5][0-9])(:([0-5][0-9]))?',
      caseSensitive: false,
      multiLine: false,
    );

    final match = regExp.matchAsPrefix(offsetString);
    if (match == null) {
      return Duration.zero;
    }

    final sign = match.group(1) == '+' ? 1 : -1;
    final hours = sign * Temporal.getIntOr0(match.group(2));
    final minutes = sign * Temporal.getIntOr0(match.group(3));
    final seconds = sign * Temporal.getIntOr0(match.group(5));
    return Duration(hours: hours, minutes: minutes, seconds: seconds);
  }

  static int getIntOr0(String? toParse) {
    return toParse != null ? int.parse(toParse) : 0;
  }

  static Duration nanosecondsToDuration(int nanoseconds) {
    final milli = (nanoseconds ~/ 1000000);
    final micro = ((nanoseconds - (milli * 1000000)) ~/ 1000);
    return Duration(milliseconds: milli, microseconds: micro);
  }

  static int getNanoseconds(DateTime dateTime) {
    return (dateTime.millisecond * 1000000) + (dateTime.microsecond * 1000);
  }
}

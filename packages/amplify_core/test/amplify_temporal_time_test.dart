// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@OnPlatform(<String, Object>{
  'browser': Skip('Failing on web'),
})

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  test('AWSTime from DateTime success', () async {
    var dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');

    final time = TemporalTime(dateTime);
    dateTime = dateTime.toUtc();

    expect(time.getOffset(), null);
    expect(
      time.getDateTime(),
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
    expect(time.format(), '${dateTime.toIso8601String().substring(11, 26)}000');
  });

  test('AWSTime from DateTime with offset success', () async {
    var dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');
    const offset = Duration(hours: 3, minutes: 30);

    final time = TemporalTime.withOffset(dateTime, offset);
    dateTime = dateTime.toUtc();

    expect(time.getOffset(), offset);
    expect(
      time.getDateTime(),
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
    expect(
      time.format(),
      '${dateTime.toIso8601String().substring(11, 26)}000+03:30',
    );
  });

  test('AWSDate from string hh:mm success', () async {
    final time = TemporalTime.fromString('05:30');

    expect(time.getOffset(), null);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), '05:30:00');
  });

  test('AWSDate from string hh:mmZ success', () async {
    final time = TemporalTime.fromString('05:30Z');

    expect(time.getOffset(), Duration.zero);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), '05:30:00Z');
  });

  test('AWSDate from string hh:mm:ss success', () async {
    final time = TemporalTime.fromString('05:30:25');

    expect(time.getOffset(), null);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30, 25));
    expect(time.format(), '05:30:25');
  });

  test('AWSDate from string hh:mm:ss.sss success', () async {
    final time = TemporalTime.fromString('05:30:25.999999999');

    expect(time.getOffset(), null);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30, 25, 999, 999));
    expect(time.format(), '05:30:25.999999999');
  });

  test('AWSDate from string hh:mm+hh:mm success', () async {
    final time = TemporalTime.fromString('05:30+03:30');
    const duration = Duration(hours: 3, minutes: 30);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), '05:30:00+03:30');
  });

  test('AWSDate from string hh:mm-hh:mm success', () async {
    final time = TemporalTime.fromString('05:30-03:30');
    const duration = Duration(hours: -3, minutes: -30);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), '05:30:00-03:30');
  });

  test('AWSDate from string hh:mm+hh:mm:ss success', () async {
    final time = TemporalTime.fromString('05:30+03:30:45');
    const duration = Duration(hours: 3, minutes: 30, seconds: 45);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), '05:30:00+03:30:45');
  });

  test('AWSDate from string hh:mm-hh:mm:ss success', () async {
    final time = TemporalTime.fromString('05:30-03:30:45');
    const duration = Duration(hours: -3, minutes: -30, seconds: -45);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), '05:30:00-03:30:45');
  });

  test('AWSDate from string hh:mm:ss+hh:mm:ss success', () async {
    final time = TemporalTime.fromString('05:30:25+03:30:45');
    const duration = Duration(hours: 3, minutes: 30, seconds: 45);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30, 25));
    expect(time.format(), '05:30:25+03:30:45');
  });

  test('AWSDate from string hh:mm:ss.sss+hh:mm:ss success', () async {
    final time = TemporalTime.fromString('05:30:25.999999999+03:30:45');
    const duration = Duration(hours: 3, minutes: 30, seconds: 45);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30, 25, 999, 999));
    expect(time.format(), '05:30:25.999999999+03:30:45');
  });

  test('compareTo compares two TemporalTime objects', () {
    final value1 = TemporalTime(DateTime(2020, 01, 01, 10, 30, 00));
    final value1Copy = TemporalTime(DateTime(2020, 01, 01, 10, 30, 00));
    final value2 = TemporalTime(DateTime(2020, 01, 01, 10, 30, 05));
    final value3 = TemporalTime(DateTime(2020, 01, 01, 11, 30, 00));

    expect(value1.compareTo(value1Copy), 0);
    expect(value1.compareTo(value2), -1);
    expect(value2.compareTo(value1), 1);
    expect(value1.compareTo(value3), -1);
    expect(value3.compareTo(value1), 1);
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@OnPlatform(<String, Object>{
  'browser': Skip('Failing on web'),
})

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  test('AWSDateTime from DateTime success', () async {
    DateTime dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');

    TemporalDateTime time = TemporalDateTime(dateTime);
    dateTime = dateTime.toUtc();

    expect(time.getOffset(), const Duration());
    expect(time.getDateTimeInUtc(), dateTime);
    expect(time.format(), '${dateTime.toIso8601String().substring(0, 26)}000Z');
  });

  test('AWSDateTime from DateTime with offset success', () async {
    DateTime dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');
    Duration offset = const Duration(hours: 3, minutes: 30);

    TemporalDateTime time = TemporalDateTime.withOffset(dateTime, offset);
    dateTime = dateTime.toUtc();

    expect(time.getOffset(), offset);
    expect(time.getDateTimeInUtc(), dateTime);
    expect(time.format(),
        '${dateTime.toIso8601String().substring(0, 26)}000+03:30');
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mmZ success', () async {
    TemporalDateTime time = TemporalDateTime.fromString('1995-05-03T03:30Z');

    expect(time.getOffset(), const Duration());
    expect(time.getDateTimeInUtc(), DateTime.utc(1995, 05, 03, 03, 30));
    expect(time.format(), '1995-05-03T03:30:00.000000000Z');
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm:ssZ success', () async {
    TemporalDateTime time = TemporalDateTime.fromString('1995-05-03T03:30:25Z');

    expect(time.getOffset(), const Duration());
    expect(time.getDateTimeInUtc(), DateTime.utc(1995, 05, 03, 03, 30, 25));
    expect(time.format(), '1995-05-03T03:30:25.000000000Z');
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm:ss.sssZ success', () async {
    TemporalDateTime time =
        TemporalDateTime.fromString('1995-05-03T03:30:25.999999999Z');

    expect(time.getOffset(), const Duration());
    expect(time.getDateTimeInUtc(),
        DateTime.utc(1995, 05, 03, 03, 30, 25, 999, 999));
    expect(time.format(), '1995-05-03T03:30:25.999999999Z');
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm+hh:mm success', () async {
    TemporalDateTime time =
        TemporalDateTime.fromString('1995-05-03T03:30+03:25');
    Duration duration = const Duration(hours: 3, minutes: 25);

    expect(time.getOffset(), duration);
    expect(time.getDateTimeInUtc(), DateTime.utc(1995, 05, 03, 03, 30));
    expect(time.format(), '1995-05-03T03:30:00.000000000+03:25');
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm-hh:mm success', () async {
    TemporalDateTime time =
        TemporalDateTime.fromString('1995-05-03T03:30-03:25');
    Duration duration = const Duration(hours: -3, minutes: -25);

    expect(time.getOffset(), duration);
    expect(time.getDateTimeInUtc(), DateTime.utc(1995, 05, 03, 03, 30));
    expect(time.format(), '1995-05-03T03:30:00.000000000-03:25');
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm+hh:mm:ss success', () async {
    TemporalDateTime time =
        TemporalDateTime.fromString('1995-05-03T03:30+03:25:55');
    Duration duration = const Duration(hours: 3, minutes: 25, seconds: 55);

    expect(time.getOffset(), duration);
    expect(time.getDateTimeInUtc(), DateTime.utc(1995, 05, 03, 03, 30));
    expect(time.format(), '1995-05-03T03:30:00.000000000+03:25:55');
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm:ss+hh:mm:ss success',
      () async {
    TemporalDateTime time =
        TemporalDateTime.fromString('1995-05-03T03:30:25+03:25:55');
    Duration duration = const Duration(hours: 3, minutes: 25, seconds: 55);

    expect(time.getOffset(), duration);
    expect(time.getDateTimeInUtc(), DateTime.utc(1995, 05, 03, 03, 30, 25));
    expect(time.format(), '1995-05-03T03:30:25.000000000+03:25:55');
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm:ss.sss+hh:mm:ss success',
      () async {
    TemporalDateTime time =
        TemporalDateTime.fromString('1995-05-03T03:30:25.999999999+03:25:55');
    Duration duration = const Duration(hours: 3, minutes: 25, seconds: 55);

    expect(time.getOffset(), duration);
    expect(time.getDateTimeInUtc(),
        DateTime.utc(1995, 05, 03, 03, 30, 25, 999, 999));
    expect(time.format(), '1995-05-03T03:30:25.999999999+03:25:55');
  });

  test(
      'AWSDateTime from string YYYY-MM-DDThh:mm:ss.sss+hh:mm:ss success with 5 digit nanosecond',
      () async {
    TemporalDateTime time =
        TemporalDateTime.fromString('1995-05-03T03:30:25.99999+03:25:55');
    Duration duration = const Duration(hours: 3, minutes: 25, seconds: 55);

    expect(time.getOffset(), duration);
    expect(time.getDateTimeInUtc(),
        DateTime.utc(1995, 05, 03, 03, 30, 25, 999, 990));
    expect(time.format(), '1995-05-03T03:30:25.999990000+03:25:55');
  });

  test('AWSDateTime from offset with single digit duration', () async {
    DateTime dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');
    Duration offset = const Duration(hours: 3, minutes: 3, seconds: 03);

    TemporalDateTime time = TemporalDateTime.withOffset(dateTime, offset);
    dateTime = dateTime.toUtc();

    expect(time.getOffset(), offset);
    expect(time.getDateTimeInUtc(), dateTime);
    expect(time.format(),
        '${dateTime.toIso8601String().substring(0, 26)}000+03:03:03');
  });

  test('AWSDateTime from string YYYY-MM-DDThh:mm fails', () async {
    expect(
        () => TemporalDateTime.fromString('1995-05-03T03:30'), throwsException);
  });

  test('AWSDateTime from string YYYY-MM-DDThhZ fails', () async {
    expect(
        () => TemporalDateTime.fromString('1995-05-03T03Z'), throwsException);
  });

  test('AWSDateTime from string YYYY-MM-DDThh:ss+hh fails', () async {
    expect(() => TemporalDateTime.fromString('1995-05-03T03:25+03'),
        throwsException);
  });

  test('AWSDateTime from string YYYY-MM-DDThh.sssZ fails', () async {
    expect(() => TemporalDateTime.fromString('1995-05-03T03.999999999'),
        throwsException);
  });

  test('compareTo compares two TemporalDateTime objects', () {
    var value1 = TemporalDateTime(DateTime(2020, 01, 01, 10, 30, 00));
    var value1Copy = TemporalDateTime(DateTime(2020, 01, 01, 10, 30, 00));
    var value2 = TemporalDateTime(DateTime(2020, 01, 01, 10, 30, 05));
    var value3 = TemporalDateTime(DateTime(2021, 01, 01, 10, 30, 00));

    expect(value1.compareTo(value1Copy), 0);
    expect(value1.compareTo(value2), -1);
    expect(value2.compareTo(value1), 1);
    expect(value1.compareTo(value3), -1);
    expect(value3.compareTo(value1), 1);
  });
}

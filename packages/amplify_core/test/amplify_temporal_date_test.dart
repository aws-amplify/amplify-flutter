// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@OnPlatform(<String, Object>{
  'browser': Skip('Failing on web'),
})

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  test('AWSDate from DateTime success', () async {
    var dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');

    final awsDate = TemporalDate(dateTime);
    dateTime = dateTime.toUtc();

    expect(awsDate.getOffset(), null);
    expect(
      awsDate.getDateTime(),
      DateTime.utc(dateTime.year, dateTime.month, dateTime.day),
    );
    expect(awsDate.format(), dateTime.toIso8601String().substring(0, 10));
  });

  test('AWSDate from DateTime with offset success', () async {
    var dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');
    const offset = Duration(hours: 3, minutes: 30);

    final awsDate = TemporalDate.withOffset(dateTime, offset);

    dateTime = dateTime.toUtc();

    expect(awsDate.getOffset(), offset);
    expect(
      awsDate.getDateTime(),
      DateTime.utc(dateTime.year, dateTime.month, dateTime.day),
    );
    expect(
      awsDate.format(),
      '${dateTime.toIso8601String().substring(0, 10)}+03:30',
    );
  });

  test('AWSDate from string YYYY-MM-DD success', () async {
    final awsDate = TemporalDate.fromString('1990-05-02');

    expect(awsDate.getOffset(), null);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), '1990-05-02');
  });

  test('AWSDate from string YYYY-MM-DDZ success', () async {
    final awsDate = TemporalDate.fromString('1990-05-02Z');

    expect(awsDate.getOffset(), Duration.zero);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), '1990-05-02Z');
  });

  test('AWSDate from string YYYY-MM-DD+hh:mm success', () async {
    final awsDate = TemporalDate.fromString('1990-05-02+03:30');
    const duration = Duration(hours: 3, minutes: 30);

    expect(awsDate.getOffset(), duration);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), '1990-05-02+03:30');
  });

  test('AWSDate from string YYYY-MM-DD-hh:mm success', () async {
    final awsDate = TemporalDate.fromString('1990-05-02-03:30');
    const duration = Duration(hours: -3, minutes: -30);

    expect(awsDate.getOffset(), duration);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), '1990-05-02-03:30');
  });

  test('AWSDate from string YYYY-MM-DD+hh:mm:ss success', () async {
    final awsDate = TemporalDate.fromString('1990-05-02+03:30:30');
    const duration = Duration(hours: 3, minutes: 30, seconds: 30);

    expect(awsDate.getOffset(), duration);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), '1990-05-02+03:30:30');
  });

  test('AWSDate with day Duration fails', () async {
    final dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');
    const duration = Duration(days: 10, hours: 3, minutes: 30, seconds: 30);
    expect(() => TemporalDate.withOffset(dateTime, duration), throwsException);
  });

  test('AWSDate from string YYYY-MM fails', () async {
    expect(() => TemporalDate.fromString('1990-05'), throwsException);
  });

  test('AWSDate from string YYYY-MM-DDZ+hh:mm fails', () async {
    expect(() => TemporalDate.fromString('1990-05-03Z+03:30'), throwsException);
  });

  test('AWSDate from string YYYY-MM-DD+hh fails', () async {
    expect(() => TemporalDate.fromString('1990-05-03+03'), throwsException);
  });

  test('compareTo compares two TemporalDate objects', () {
    final value1 = TemporalDate(DateTime(2020, 01, 01));
    final value1Copy = TemporalDate(DateTime(2020, 01, 01));
    final value2 = TemporalDate(DateTime(2020, 01, 02));
    final value3 = TemporalDate(DateTime(2021, 01, 01));

    expect(value1.compareTo(value1Copy), 0);
    expect(value1.compareTo(value2), -1);
    expect(value2.compareTo(value1), 1);
    expect(value1.compareTo(value3), -1);
    expect(value3.compareTo(value1), 1);
  });
}

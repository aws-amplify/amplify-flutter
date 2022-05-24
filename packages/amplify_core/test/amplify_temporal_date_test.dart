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

@OnPlatform(<String, Object>{
  'browser': Skip('Failing on web'),
})

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('AWSDate from DateTime success', () async {
    DateTime dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');

    TemporalDate awsDate = TemporalDate(dateTime);
    dateTime = dateTime.toUtc();

    expect(awsDate.getOffset(), null);
    expect(awsDate.getDateTime(),
        DateTime.utc(dateTime.year, dateTime.month, dateTime.day));
    expect(awsDate.format(), dateTime.toIso8601String().substring(0, 10));
  });

  test('AWSDate from DateTime with offset success', () async {
    DateTime dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');
    Duration offset = const Duration(hours: 3, minutes: 30);

    TemporalDate awsDate = TemporalDate.withOffset(dateTime, offset);

    dateTime = dateTime.toUtc();

    expect(awsDate.getOffset(), offset);
    expect(awsDate.getDateTime(),
        DateTime.utc(dateTime.year, dateTime.month, dateTime.day));
    expect(awsDate.format(),
        '${dateTime.toIso8601String().substring(0, 10)}+03:30');
  });

  test('AWSDate from string YYYY-MM-DD success', () async {
    TemporalDate awsDate = TemporalDate.fromString('1990-05-02');

    expect(awsDate.getOffset(), null);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), '1990-05-02');
  });

  test('AWSDate from string YYYY-MM-DDZ success', () async {
    TemporalDate awsDate = TemporalDate.fromString('1990-05-02Z');

    expect(awsDate.getOffset(), const Duration());
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), '1990-05-02Z');
  });

  test('AWSDate from string YYYY-MM-DD+hh:mm success', () async {
    TemporalDate awsDate = TemporalDate.fromString('1990-05-02+03:30');
    Duration duration = const Duration(hours: 3, minutes: 30);

    expect(awsDate.getOffset(), duration);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), '1990-05-02+03:30');
  });

  test('AWSDate from string YYYY-MM-DD-hh:mm success', () async {
    TemporalDate awsDate = TemporalDate.fromString('1990-05-02-03:30');
    Duration duration = const Duration(hours: -3, minutes: -30);

    expect(awsDate.getOffset(), duration);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), '1990-05-02-03:30');
  });

  test('AWSDate from string YYYY-MM-DD+hh:mm:ss success', () async {
    TemporalDate awsDate = TemporalDate.fromString('1990-05-02+03:30:30');
    Duration duration = const Duration(hours: 3, minutes: 30, seconds: 30);

    expect(awsDate.getOffset(), duration);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), '1990-05-02+03:30:30');
  });

  test('AWSDate with day Duration fails', () async {
    DateTime dateTime = DateTime.parse('2021-11-09T18:53:12.183540Z');
    Duration duration =
        const Duration(days: 10, hours: 3, minutes: 30, seconds: 30);
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
    var value1 = TemporalDate(DateTime(2020, 01, 01));
    var value1Copy = TemporalDate(DateTime(2020, 01, 01));
    var value2 = TemporalDate(DateTime(2020, 01, 02));
    var value3 = TemporalDate(DateTime(2021, 01, 01));

    expect(value1.compareTo(value1Copy), 0);
    expect(value1.compareTo(value2), -1);
    expect(value2.compareTo(value1), 1);
    expect(value1.compareTo(value3), -1);
    expect(value3.compareTo(value1), 1);
  });
}

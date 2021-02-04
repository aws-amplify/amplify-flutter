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

import 'package:amplify_datastore_plugin_interface/src/types/temporal/temporal_date.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('AWSDate from DateTime success', () async {
    DateTime now = DateTime.now();

    TemporalDate awsDate = TemporalDate(now);
    now = now.toUtc();

    expect(awsDate.getOffset(), null);
    expect(awsDate.getDateTime(), DateTime.utc(now.year, now.month, now.day));
    expect(awsDate.format(), now.toIso8601String().substring(0, 10));
  });

  test('AWSDate from DateTime with offset success', () async {
    DateTime now = DateTime.now();
    Duration offset = Duration(hours: 3, minutes: 30);

    TemporalDate awsDate = TemporalDate.withOffset(now, offset);

    now = now.toUtc();

    expect(awsDate.getOffset(), offset);
    expect(awsDate.getDateTime(), DateTime.utc(now.year, now.month, now.day));
    expect(awsDate.format(), now.toIso8601String().substring(0, 10) + "+03:30");
  });

  test('AWSDate from string YYYY-MM-DD success', () async {
    TemporalDate awsDate = TemporalDate.fromString("1990-05-02");

    expect(awsDate.getOffset(), null);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), "1990-05-02");
  });

  test('AWSDate from string YYYY-MM-DDZ success', () async {
    TemporalDate awsDate = TemporalDate.fromString("1990-05-02Z");

    expect(awsDate.getOffset(), Duration());
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), "1990-05-02Z");
  });

  test('AWSDate from string YYYY-MM-DD+hh:mm success', () async {
    TemporalDate awsDate = TemporalDate.fromString("1990-05-02+03:30");
    Duration duration = Duration(hours: 3, minutes: 30);

    expect(awsDate.getOffset(), duration);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), "1990-05-02+03:30");
  });

  test('AWSDate from string YYYY-MM-DD-hh:mm success', () async {
    TemporalDate awsDate = TemporalDate.fromString("1990-05-02-03:30");
    Duration duration = Duration(hours: -3, minutes: -30);

    expect(awsDate.getOffset(), duration);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), "1990-05-02-03:30");
  });

  test('AWSDate from string YYYY-MM-DD+hh:mm:ss success', () async {
    TemporalDate awsDate = TemporalDate.fromString("1990-05-02+03:30:30");
    Duration duration = Duration(hours: 3, minutes: 30, seconds: 30);

    expect(awsDate.getOffset(), duration);
    expect(awsDate.getDateTime(), DateTime.utc(1990, 5, 2));
    expect(awsDate.format(), "1990-05-02+03:30:30");
  });

  test('AWSDate with day Duration fails', () async {
    Duration duration = Duration(days: 10, hours: 3, minutes: 30, seconds: 30);
    expect(() => TemporalDate.withOffset(DateTime.now(), duration),
        throwsException);
  });

  test('AWSDate from string YYYY-MM fails', () async {
    expect(() => TemporalDate.fromString("1990-05"), throwsException);
  });

  test('AWSDate from string YYYY-MM-DDZ+hh:mm fails', () async {
    expect(() => TemporalDate.fromString("1990-05-03Z+03:30"), throwsException);
  });

  test('AWSDate from string YYYY-MM-DD+hh fails', () async {
    expect(() => TemporalDate.fromString("1990-05-03+03"), throwsException);
  });
}

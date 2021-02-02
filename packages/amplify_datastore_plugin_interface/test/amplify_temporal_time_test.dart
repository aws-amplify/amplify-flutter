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

import 'package:amplify_datastore_plugin_interface/src/types/temporal/temporal_time.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('AWSTime from DateTime success', () async {
    DateTime now = DateTime.now();

    TemporalTime time = TemporalTime(now);
    now = now.toUtc();

    expect(time.getOffset(), null);
    expect(
        time.getDateTime(),
        DateTime.utc(1970, 1, 1, now.hour, now.minute, now.second,
            now.millisecond, now.microsecond));
    expect(time.format(), now.toIso8601String().substring(11, 26) + "000");
  });

  test('AWSTime from DateTime with offset success', () async {
    DateTime now = DateTime.now();
    Duration offset = Duration(hours: 3, minutes: 30);

    TemporalTime time = TemporalTime.withOffset(now, offset);
    now = now.toUtc();

    expect(time.getOffset(), offset);
    expect(
        time.getDateTime(),
        DateTime.utc(1970, 1, 1, now.hour, now.minute, now.second,
            now.millisecond, now.microsecond));
    expect(time.format(),
        now.toIso8601String().substring(11, 26) + "000" + "+03:30");
  });

  test('AWSDate from string hh:mm success', () async {
    TemporalTime time = TemporalTime.fromString("05:30");

    expect(time.getOffset(), null);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), "05:30:00");
  });

  test('AWSDate from string hh:mmZ success', () async {
    TemporalTime time = TemporalTime.fromString("05:30Z");

    expect(time.getOffset(), Duration());
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), "05:30:00Z");
  });

  test('AWSDate from string hh:mm:ss success', () async {
    TemporalTime time = TemporalTime.fromString("05:30:25");

    expect(time.getOffset(), null);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30, 25));
    expect(time.format(), "05:30:25");
  });

  test('AWSDate from string hh:mm:ss.sss success', () async {
    TemporalTime time = TemporalTime.fromString("05:30:25.999999999");

    expect(time.getOffset(), null);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30, 25, 999, 999));
    expect(time.format(), "05:30:25.999999999");
  });

  test('AWSDate from string hh:mm+hh:mm success', () async {
    TemporalTime time = TemporalTime.fromString("05:30+03:30");
    Duration duration = Duration(hours: 3, minutes: 30);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), "05:30:00+03:30");
  });

  test('AWSDate from string hh:mm-hh:mm success', () async {
    TemporalTime time = TemporalTime.fromString("05:30-03:30");
    Duration duration = Duration(hours: -3, minutes: -30);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), "05:30:00-03:30");
  });

  test('AWSDate from string hh:mm+hh:mm:ss success', () async {
    TemporalTime time = TemporalTime.fromString("05:30+03:30:45");
    Duration duration = Duration(hours: 3, minutes: 30, seconds: 45);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), "05:30:00+03:30:45");
  });

  test('AWSDate from string hh:mm-hh:mm:ss success', () async {
    TemporalTime time = TemporalTime.fromString("05:30-03:30:45");
    Duration duration = Duration(hours: -3, minutes: -30, seconds: -45);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30));
    expect(time.format(), "05:30:00-03:30:45");
  });

  test('AWSDate from string hh:mm:ss+hh:mm:ss success', () async {
    TemporalTime time = TemporalTime.fromString("05:30:25+03:30:45");
    Duration duration = Duration(hours: 3, minutes: 30, seconds: 45);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30, 25));
    expect(time.format(), "05:30:25+03:30:45");
  });

  test('AWSDate from string hh:mm:ss.sss+hh:mm:ss success', () async {
    TemporalTime time = TemporalTime.fromString("05:30:25.999999999+03:30:45");
    Duration duration = Duration(hours: 3, minutes: 30, seconds: 45);

    expect(time.getOffset(), duration);
    expect(time.getDateTime(), DateTime.utc(1970, 1, 1, 5, 30, 25, 999, 999));
    expect(time.format(), "05:30:25.999999999+03:30:45");
  });
}

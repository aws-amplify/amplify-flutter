// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@OnPlatform(<String, Object>{
  'browser': Skip('Failing on web'),
})

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  test('compareTo compares two TemporalTimestamp objects', () {
    final value1 = TemporalTimestamp(DateTime(2020, 01, 01, 10, 30, 00));
    final value1Copy = TemporalTimestamp(DateTime(2020, 01, 01, 10, 30, 00));
    final value2 = TemporalTimestamp(DateTime(2020, 01, 01, 10, 30, 05));
    final value3 = TemporalTimestamp(DateTime(2020, 01, 01, 11, 30, 00));

    expect(value1.compareTo(value1Copy), 0);
    expect(value1.compareTo(value2), -1);
    expect(value2.compareTo(value1), 1);
    expect(value1.compareTo(value3), -1);
    expect(value3.compareTo(value1), 1);
  });
}

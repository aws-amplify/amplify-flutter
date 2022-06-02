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

import 'package:amplify_core/src/types/datastore/datastore_types.dart';
import 'package:test/test.dart';

enum TestEnum { yes, no, maybe }

void main() {
  test('DateTimeParse.toDateTimeIso8601String generated proper string', () {
    DateTime dateTime = DateTime(2010, 10, 10, 10, 10, 10, 10);
    expect(dateTime.toIso8601String(), '2010-10-10T10:10:10.010');
  });

  test('DateTimeParse.fromString generates proper DateTime', () {
    expect(DateTimeParse.fromString('2010-10-10T10:10:10.010'),
        DateTime(2010, 10, 10, 10, 10, 10, 10));
  });

  test('parsers.enumToString generates proper string', () {
    expect(enumToString(TestEnum.maybe), 'maybe');
  });

  test('parsers.enumToString generates null for null enum value', () {
    expect(enumToString(null), null);
  });

  test('parsers.enumFromString generates proper enum', () {
    expect(enumFromString<TestEnum>('maybe', TestEnum.values), TestEnum.maybe);
  });

  test('parsers.enumFromString generates null for non existing enum values',
      () {
    expect(enumFromString<TestEnum>('RANDOM', TestEnum.values), null);
  });

  test(
      'parsers.enumFromString generates null for empty string representing enum',
      () {
    expect(enumFromString<TestEnum>('', TestEnum.values), null);
  });
}

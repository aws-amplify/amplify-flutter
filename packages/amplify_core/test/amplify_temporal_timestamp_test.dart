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
import 'package:test/test.dart';

void main() {
  test('compareTo compares two TemporalTimestamp objects', () {
    var value1 = TemporalTimestamp(DateTime(2020, 01, 01, 10, 30, 00));
    var value1Copy = TemporalTimestamp(DateTime(2020, 01, 01, 10, 30, 00));
    var value2 = TemporalTimestamp(DateTime(2020, 01, 01, 10, 30, 05));
    var value3 = TemporalTimestamp(DateTime(2020, 01, 01, 11, 30, 00));

    expect(value1.compareTo(value1Copy), 0);
    expect(value1.compareTo(value2), -1);
    expect(value2.compareTo(value1), 1);
    expect(value1.compareTo(value3), -1);
    expect(value3.compareTo(value1), 1);
  });
}

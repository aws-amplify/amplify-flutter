// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

void main() {
  test('headers', () {
    // expect(
    //   parseHeader('"b,c", "\\"def\\"", a'),
    //   equals(['"b,c"', '"def"', 'a']),
    // );
    expect(
      parseHeader(
        'Mon, 16 Dec 2019 23:48:18 GMT, Mon, 16 Dec 2019 23:48:18 GMT',
        isTimestampList: true,
      )
          .map((t) => Timestamp.parse(t, format: TimestampFormat.httpDate))
          .map((t) => t.format(TimestampFormat.epochSeconds)),
      equals([1576540098, 1576540098]),
    );
  });
}

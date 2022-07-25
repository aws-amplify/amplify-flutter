// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

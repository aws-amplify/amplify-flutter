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

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

void main() {
  group('HttpPayload', () {
    test('empty', () {
      expect(const HttpPayload.empty(), emitsDone);
    });

    test('string', () {
      expect(
        HttpPayload.string('Hello'),
        emitsInOrder([
          'Hello'.codeUnits,
          emitsDone,
        ]),
      );
    });

    test('bytes', () {
      expect(
        HttpPayload.bytes('Hello'.codeUnits),
        emitsInOrder([
          'Hello'.codeUnits,
          emitsDone,
        ]),
      );
    });

    test('formFields', () {
      expect(
        HttpPayload.formFields({'key1': 'value1', 'key2': 'value2'}),
        emitsInOrder([
          'key1=value1&key2=value2'.codeUnits,
          emitsDone,
        ]),
      );
    });

    test('json', () {
      expect(
        HttpPayload.json({'key1': 'value1', 'key2': 'value2'}),
        emitsInOrder([
          '{"key1":"value1","key2":"value2"}'.codeUnits,
          emitsDone,
        ]),
      );
    });

    test('streaming', () {
      expect(
        HttpPayload.streaming(
          Stream.fromIterable([
            [1],
            [2],
            [3],
            [4],
            [5],
          ]),
        ),
        emitsInOrder([
          [1],
          [2],
          [3],
          [4],
          [5],
          emitsDone,
        ]),
      );
    });
  });
}

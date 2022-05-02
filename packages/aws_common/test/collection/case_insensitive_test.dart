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
  group('CaseInsensitiveMap', () {
    test('ascii keys are case-insensitive', () {
      const map = <String, Object>{
        'a': 123,
        'b': 'abc',
        'c': 'def',
        'A': 456,
        'B': 'ABC',
        'C': 'DEF',
      };
      final ciMap = CaseInsensitiveMap(map);

      expect(map, hasLength(6));
      expect(ciMap, hasLength(3));
      expect(ciMap['a'], equals(ciMap['A']));
      expect(ciMap['b'], equals(ciMap['B']));
      expect(ciMap['c'], equals(ciMap['C']));
    });

    test('ascii headers are case-insensitive', () {
      final map = <String, String>{
        'ACCEPT': 'application/json',
        'Accept': 'application/xml',
        'accept': 'text/plain',
        'CONTENT-LENGTH': '1',
        'Content-Length': '2',
        'content-length': '3',
      };
      final ciMap = CaseInsensitiveMap(map);

      expect(map, hasLength(6));
      expect(ciMap, hasLength(2));
      expect(ciMap['ACCEPT'], equals('text/plain'));
      expect(ciMap['Accept'], equals('text/plain'));
      expect(ciMap['accept'], equals('text/plain'));
      expect(ciMap['CONTENT-LENGTH'], equals('3'));
      expect(ciMap['Content-Length'], equals('3'));
      expect(ciMap['content-length'], equals('3'));
    });

    test('unicode keys are case-sensitive', () {
      const map = <String, Object>{
        'á': 123,
        'ë': 'abc',
        'î': 'def',
        'Á': 456,
        'Ë': 'ABC',
        'Î': 'DEF',
      };
      final ciMap = CaseInsensitiveMap(map);

      expect(ciMap, hasLength(6));
      expect(ciMap['á'], isNot(equals(ciMap['Á'])));
      expect(ciMap['ë'], isNot(equals(ciMap['Ë'])));
      expect(ciMap['î'], isNot(equals(ciMap['Î'])));
    });
  });

  group('CaseInsensitiveSet', () {
    test('ascii elements are case-insensitive', () {
      const set = <String>{
        'a',
        'b',
        'c',
        'A',
        'B',
        'C',
      };
      final ciSet = CaseInsensitiveSet(set);

      expect(ciSet, hasLength(3));
      expect(ciSet, unorderedEquals(<String>['a', 'b', 'c']));
    });

    test('unicode elements are case-sensitive', () {
      const set = <String>{
        'á',
        'ë',
        'î',
        'Á',
        'Ë',
        'Î',
      };
      final ciSet = CaseInsensitiveSet(set);

      expect(ciSet, hasLength(6));
      expect(
        ciSet,
        unorderedEquals(<String>[
          'á',
          'ë',
          'î',
          'Á',
          'Ë',
          'Î',
        ]),
      );
    });
  });
}

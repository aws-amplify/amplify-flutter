// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
      expect(map.entries, hasLength(6));
      expect(ciMap, hasLength(3));
      expect(ciMap.entries, hasLength(3));
      expect(ciMap['a'], equals(ciMap['A']));
      expect(ciMap['b'], equals(ciMap['B']));
      expect(ciMap['c'], equals(ciMap['C']));
    });

    test('ascii headers are case-insensitive', () {
      final map = <String, String>{
        'ACCEPT': 'application/json',
        'Accept': 'application/xml',
        'CONTENT-LENGTH': '1',
        'Content-Length': '2',
      };
      final ciMap = CaseInsensitiveMap(map);

      expect(map, hasLength(4));
      expect(map.entries, hasLength(4));
      expect(ciMap, hasLength(2));
      expect(ciMap.entries, hasLength(2));
      expect(ciMap['ACCEPT'], equals('application/xml'));
      expect(ciMap['Accept'], equals('application/xml'));
      expect(ciMap['CONTENT-LENGTH'], equals('2'));
      expect(ciMap['Content-Length'], equals('2'));

      ciMap['accept'] = 'text/plain';
      ciMap['content-length'] = '3';

      expect(ciMap, hasLength(2));
      expect(ciMap.entries, hasLength(2));
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
      const set = <String>{'a', 'b', 'c', 'A', 'B', 'C'};
      final ciSet = CaseInsensitiveSet(set);

      expect(ciSet, hasLength(3));
      expect(ciSet, unorderedEquals(<String>['a', 'b', 'c']));
    });

    test('unicode elements are case-sensitive', () {
      const set = <String>{'á', 'ë', 'î', 'Á', 'Ë', 'Î'};
      final ciSet = CaseInsensitiveSet(set);

      expect(ciSet, hasLength(6));
      expect(ciSet, unorderedEquals(<String>['á', 'ë', 'î', 'Á', 'Ë', 'Î']));
    });
  });
}

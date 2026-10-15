// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  group('SubpathStrategy', () {
    group('include', () {
      test('is a SubpathStrategyInclude', () {
        expect(const SubpathStrategy.include(), isA<SubpathStrategyInclude>());
      });

      test('serializes without a delimiter', () {
        expect(const SubpathStrategy.include().toJson(), {
          'strategy': 'include',
        });
      });
    });

    group('exclude', () {
      test('is a SubpathStrategyExclude', () {
        expect(const SubpathStrategy.exclude(), isA<SubpathStrategyExclude>());
      });

      test('defaults the delimiter to "/"', () {
        expect(const SubpathStrategyExclude().delimiter, '/');
      });

      test('accepts a custom delimiter', () {
        expect(
          const SubpathStrategy.exclude(delimiter: '#'),
          isA<SubpathStrategyExclude>().having(
            (s) => s.delimiter,
            'delimiter',
            '#',
          ),
        );
      });

      test('serializes the delimiter', () {
        expect(const SubpathStrategy.exclude(delimiter: '-').toJson(), {
          'strategy': 'exclude',
          'delimiter': '-',
        });
      });
    });

    group('equality', () {
      test('include instances are equal', () {
        // `const` is deliberately omitted: canonicalization would make these
        // the same instance and the equality assertion vacuous.
        // ignore: prefer_const_constructors
        final a = SubpathStrategyInclude();
        // ignore: prefer_const_constructors
        final b = SubpathStrategyInclude();

        expect(a, b);
        expect(a.hashCode, b.hashCode);
      });

      test('exclude instances with the same delimiter are equal', () {
        final delimiter = String.fromCharCode(35);
        final a = SubpathStrategy.exclude(delimiter: delimiter);
        final b = SubpathStrategy.exclude(delimiter: delimiter);

        expect(a, b);
        expect(a.hashCode, b.hashCode);
      });

      test('exclude instances with different delimiters are not equal', () {
        expect(
          const SubpathStrategy.exclude(delimiter: '#'),
          isNot(const SubpathStrategy.exclude(delimiter: '-')),
        );
      });

      test('include and exclude are never equal', () {
        expect(
          const SubpathStrategy.include(),
          isNot(const SubpathStrategy.exclude()),
        );
        expect(
          const SubpathStrategy.exclude(),
          isNot(const SubpathStrategy.include()),
        );
      });
    });

    test('can be matched exhaustively without a default clause', () {
      String describe(SubpathStrategy strategy) => switch (strategy) {
        SubpathStrategyInclude() => 'include',
        SubpathStrategyExclude(:final delimiter) => 'exclude:$delimiter',
      };

      expect(describe(const SubpathStrategy.include()), 'include');
      expect(
        describe(const SubpathStrategy.exclude(delimiter: '#')),
        'exclude:#',
      );
    });
  });

  group('StorageListOptions', () {
    test('defaults subpathStrategy to include and listAll to false', () {
      const options = StorageListOptions();

      expect(options.subpathStrategy, const SubpathStrategy.include());
      expect(options.listAll, isFalse);
      expect(options.pageSize, 1000);
    });

    test('serializes subpathStrategy and listAll', () {
      const options = StorageListOptions(
        subpathStrategy: SubpathStrategy.exclude(delimiter: '#'),
        listAll: true,
      );

      expect(options.toJson(), containsPair('listAll', true));
      expect(
        options.toJson(),
        containsPair('subpathStrategy', {
          'strategy': 'exclude',
          'delimiter': '#',
        }),
      );
    });

    group('equality', () {
      // Regression test: `SubpathStrategy` must provide value equality, or
      // `StorageListOptions` equality silently breaks for any strategy that
      // is not const-canonicalized.
      test('holds for non-const instances with an equal strategy', () {
        // `String.fromCharCode` defeats const canonicalization, so the two
        // strategies are distinct instances holding an equal delimiter.
        final delimiter = String.fromCharCode(35);
        final a = StorageListOptions(
          subpathStrategy: SubpathStrategy.exclude(delimiter: delimiter),
        );
        final b = StorageListOptions(
          subpathStrategy: SubpathStrategy.exclude(delimiter: delimiter),
        );

        expect(a, b);
        expect(a.hashCode, b.hashCode);
      });

      test('distinguishes a differing strategy', () {
        expect(
          const StorageListOptions(subpathStrategy: SubpathStrategy.exclude()),
          isNot(const StorageListOptions()),
        );
      });

      test('distinguishes a differing listAll', () {
        expect(
          const StorageListOptions(listAll: true),
          isNot(const StorageListOptions()),
        );
      });
    });
  });

  group('StorageListResult', () {
    test('defaults excludedSubpaths to empty', () {
      const result = StorageListResult<StorageItem>([], hasNextPage: false);

      expect(result.excludedSubpaths, isEmpty);
    });

    test('carries excludedSubpaths', () {
      const result = StorageListResult<StorageItem>(
        [],
        hasNextPage: false,
        excludedSubpaths: ['photos/vacation/'],
      );

      expect(result.excludedSubpaths, ['photos/vacation/']);
    });
  });
}

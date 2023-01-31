// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/src/util.dart';
import 'package:graphs/graphs.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

final throwsCyclicError = throwsA(isA<CycleException<dynamic>>());

void main() {
  group('publish', () {
    group('sort packages', () {
      test('resolves direct and transitive deps', () {
        //     b       e --> f
        //   /   \   /
        // a       d
        //   \   /   \
        //     c       g
        //
        // h  -->  *i (external package)
        final packages = [
          _dummyPackage('a', deps: ['b', 'c']),
          _dummyPackage('b', deps: ['d']),
          _dummyPackage('c', deps: ['d']),
          _dummyPackage('d', deps: ['e', 'g']),
          _dummyPackage('e', deps: ['f']),
          _dummyPackage('f', deps: []),
          _dummyPackage('g', deps: []),
          _dummyPackage('h', deps: ['i']),
        ]..shuffle();
        final packageNames = packages.map((el) => el.name).toList();
        sortPackagesTopologically<Pubspec>(packages, (pkg) => pkg);

        final requirements = <String, List<String>>{
          'a': ['b', 'c', 'd', 'e', 'f', 'g'],
          'b': ['d', 'e', 'f', 'g'],
          'c': ['d', 'e', 'f', 'g'],
          'd': ['e', 'f', 'g'],
          'e': ['f'],
          'f': [],
          'g': [],
          'h': ['i'],
        };

        final published = <String>{};
        for (final package in packages) {
          final packageReqs = requirements[package.name]!;
          for (final requirement in packageReqs) {
            final isExternal = !packageNames.contains(requirement);
            final isPublished = published.contains(requirement);
            expect(isExternal || isPublished, isTrue);
          }
          published.add(package.name);
        }
      });

      test('w/ cyclic dependencies', () {
        final packages = [
          _dummyPackage('a', deps: ['b']),
          _dummyPackage('b', deps: ['a']),
        ];
        expect(
          () => sortPackagesTopologically<Pubspec>(packages, (pkg) => pkg),
          throwsCyclicError,
        );
      });
    });
  });
}

Pubspec _dummyPackage(String name, {List<String> deps = const []}) {
  return Pubspec(
    name,
    devDependencies: {},
    dependencies: {
      for (final dep in deps) dep: HostedDependency(),
    },
    dependencyOverrides: {},
    version: Version(1, 0, 0),
    publishTo: null,
  );
}

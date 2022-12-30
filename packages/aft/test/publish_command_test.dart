// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:graphs/graphs.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

final throwsCyclicError = throwsA(isA<CycleException<dynamic>>());

void main() {
  group('publish', () {
    group('sort packages', () {
      test('', () {
        //     b
        //   /   \
        // a       d
        //   \   /
        //     c
        //
        // e  -->  *f (external package)
        final packages = [
          _dummyPackage('a', deps: ['b', 'c']),
          _dummyPackage('b', deps: ['d']),
          _dummyPackage('c', deps: ['d']),
          _dummyPackage('d', deps: []),
          _dummyPackage('e', deps: ['f']),
        ]..shuffle();
        final packageNames = packages.map((el) => el.name).toList();
        sortPackagesTopologically<Pubspec>(packages, (pkg) => pkg);

        final published = <String>{};
        for (final package in packages) {
          final dependencies = package.dependencies;
          for (final dependency in dependencies.keys) {
            final isExternal = !packageNames.contains(dependency);
            final isPublished = published.contains(dependency);
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

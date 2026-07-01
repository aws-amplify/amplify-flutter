// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/src/config/config.dart';
import 'package:aft/src/config/config_loader.dart';
import 'package:checks/checks.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

void main() {
  group('AftConfigLoader', () {
    test('loads root config', () async {
      const rootPubspec = '''
name: my_repo
publish_to: none

environment:
  sdk: ^3.9.0

dependencies:
  json_serializable: ">=6.9.4 <6.10.0"
''';
      await d.dir('repo', [d.file('pubspec.yaml', rootPubspec)]).create();

      final rootDirectory = p.normalize(d.path('repo'));
      final workingDirectory = rootDirectory;
      final configLoader = AftConfigLoader(
        workingDirectory: Directory(workingDirectory),
      );
      check(configLoader.load).returnsNormally()
        ..has(
          (config) => p.normalize(config.rootDirectory.toFilePath()),
          'rootDirectory',
        ).equals(rootDirectory)
        ..has(
          (config) => p.normalize(config.workingDirectory.toFilePath()),
          'workingDirectory',
        ).equals(workingDirectory)
        ..has(
          (config) => config.dependencies.toMap(),
          'dependencies',
        ).containsKey('json_serializable');
    });

    test('merges root config with child config', () async {
      const rootPubspec = r'''
name: my_repo
publish_to: none

environment:
  sdk: ^3.9.0

dependencies:
  json_serializable: ">=6.9.4 <6.10.0"

aft:
  scripts:
    license:
      description: Adds license headers recursively in the current directory
      from: current
      run: $AFT_ROOT/tool/license.sh $@
''';

      const packagePubspec = r'''
name: my_pkg
version: 0.1.0

environment:
  sdk: ^3.9.0

dependencies:
  built_value: ^8.10.1
  json_serializable: ">=6.9.4 <6.10.0"

aft:
  scripts:
    format:
      description: Checks formatting for all packages
      from: all
      run: aft format --set-exit-if-changed .
''';

      await d.dir('repo', [
        d.file('pubspec.yaml', rootPubspec),
        d.dir('packages', [
          d.dir('my_pkg', [d.file('pubspec.yaml', packagePubspec)]),
        ]),
      ]).create();

      final rootDirectory = p.normalize(d.path('repo'));
      final workingDirectory = p.normalize(d.path('repo/packages/my_pkg'));
      final configLoader = AftConfigLoader(
        workingDirectory: Directory(workingDirectory),
      );
      check(configLoader.load).returnsNormally()
        ..has(
          (config) => p.normalize(config.rootDirectory.toFilePath()),
          'rootDirectory',
        ).equals(rootDirectory)
        ..has(
          (config) => p.normalize(config.workingDirectory.toFilePath()),
          'workingDirectory',
        ).equals(workingDirectory)
        ..has((config) => config.dependencies.toMap(), 'dependencies').which(
          (it) => it
            ..containsKey('json_serializable')
            ..not((it) => it..containsKey('built_value')),
        )
        ..has((config) => config.scripts.toMap(), 'scripts').which(
          (it) => it
            ..containsKey('license')
            ..containsKey('format'),
        );
    });
  });

  group('locatePackage', () {
    late AftConfig config;

    setUp(() async {
      d.Descriptor package(String name, String version) => d.dir(name, [
        d.file('pubspec.yaml', '''
name: $name
version: $version

environment:
  sdk: ^3.9.0
'''),
      ]);

      await d.dir('repo', [
        d.file('pubspec.yaml', '''
name: my_repo
publish_to: none

environment:
  sdk: ^3.9.0
'''),
        d.dir('packages', [
          package('amplify_core', '2.10.1'),
          package('aws_common', '0.7.6'),
          package('aws_signature_v4', '0.7.1'),
        ]),
      ]).create();

      config = AftConfigLoader(
        workingDirectory: Directory(p.normalize(d.path('repo'))),
      ).load();
    });

    test('resolves a plain package name to its path', () {
      check(
        p.normalize(config.locatePackage('amplify_core').path),
      ).equals(p.normalize(d.path('repo/packages/amplify_core')));
    });

    test('resolves a tag to the same path as the plain name', () {
      check(
        config.locatePackage('amplify_core-v2.10.1').path,
      ).equals(config.locatePackage('amplify_core').path);
    });

    test('resolves a name containing `_v` by name and by tag', () {
      final expectedPath = p.normalize(
        d.path('repo/packages/aws_signature_v4'),
      );

      // The `_v4` in the plain name is not mistaken for a tag separator.
      check(config.locatePackage('aws_signature_v4'))
        ..has((pkg) => pkg.name, 'name').equals('aws_signature_v4')
        ..has((pkg) => p.normalize(pkg.path), 'path').equals(expectedPath);

      // The tag form strips only the trailing `-v0.7.1`, not `_v4`.
      check(config.locatePackage('aws_signature_v4-v0.7.1'))
        ..has((pkg) => pkg.name, 'name').equals('aws_signature_v4')
        ..has((pkg) => p.normalize(pkg.path), 'path').equals(expectedPath);
    });

    test('throws for an unknown package, like the `Repo` `[]` operator', () {
      expect(
        () => config.locatePackage('does_not_exist'),
        throwsA(isA<TypeError>()),
      );
    });
  });
}

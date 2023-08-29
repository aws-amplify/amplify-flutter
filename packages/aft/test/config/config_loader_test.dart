// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

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
  sdk: ^3.0.0

dependencies:
  json_serializable: ^6.0.0
''';
      await d.dir('repo', [
        d.file('pubspec.yaml', rootPubspec),
      ]).create();

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
        ..has((config) => config.dependencies.toMap(), 'dependencies')
            .containsKey('json_serializable');
    });

    test('merges root config with child config', () async {
      const rootPubspec = r'''
name: my_repo
publish_to: none

environment:
  sdk: ^3.0.0

dependencies:
  json_serializable: ^6.0.0

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
  sdk: ^3.0.0

dependencies:
  built_value: ^8.0.0
  json_serializable: ^6.0.0

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
          d.dir('my_pkg', [
            d.file('pubspec.yaml', packagePubspec),
          ]),
        ]),
      ]).create();

      final rootDirectory = p.normalize(d.path('repo'));
      final workingDirectory = p.normalize(
        d.path('repo/packages/my_pkg'),
      );
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
          it()
            ..containsKey('json_serializable')
            ..not(it()..containsKey('built_value')),
        )
        ..has((config) => config.scripts.toMap(), 'scripts').which(
          it()
            ..containsKey('license')
            ..containsKey('format'),
        );
    });
  });
}

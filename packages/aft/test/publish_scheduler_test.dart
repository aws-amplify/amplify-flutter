// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/publish_scheduler.dart';
import 'package:git/git.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'helpers/descriptors.dart' as d;

/// The packages are named and versioned after real `pub.dev` releases so that
/// the scheduler's wait for a version to become resolvable behaves as it does
/// in a release, without publishing anything.
const _dependency = 'path';
const _dependencyVersion = '1.9.1';
const _dependent = 'collection';
const _dependentVersion = '1.19.1';

class _CiPublishCommand extends AmplifyCommand with PublishHelpers {
  @override
  String get name => 'test-publish';

  @override
  String get description => 'Publishes in CI mode against a test sandbox.';

  @override
  bool get dryRun => false;

  @override
  bool get force => true;

  @override
  bool get bootstrap => false;

  @override
  Directory get workingDirectory => Directory(d.sandbox);
}

void main() {
  group('PublishScheduler (--ci)', () {
    late _CiPublishCommand command;
    late Directory remote;

    setUp(() async {
      remote = Directory.systemTemp.createTempSync('aft_remote_');
      await runGit(['init', '--bare', remote.path]);

      final repo = await d.repo([
        d.dir('packages', [
          d.package(_dependency, version: _dependencyVersion).dir,
          d
              .package(
                _dependent,
                version: _dependentVersion,
                dependencies: {_dependency: '>=1.9.0 <1.10.0'},
              )
              .dir,
        ]),
      ]).create();

      await repo.git.runCommand(['remote', 'add', 'origin', remote.path]);

      command = _CiPublishCommand();
      addTearDown(command.close);
      await command.run();
    });

    tearDown(() => remote.deleteSync(recursive: true));

    Future<List<String>> remoteTags() async {
      final result = await runGit([
        'tag',
        '--list',
      ], processWorkingDir: remote.path);
      return (result.stdout as String)
          .split('\n')
          .map((line) => line.trim())
          .where((line) => line.isNotEmpty)
          .toList();
    }

    test(
      'pushes tags in dependency order, gating on resolvability',
      () async {
        final packages = [
          command.repoPackages[_dependent]!,
          command.repoPackages[_dependency]!,
        ];
        expect(
          packages.map((pkg) => pkg.name),
          [_dependent, _dependency],
          reason: 'Starts in the wrong order so ordering cannot be incidental',
        );

        // The tags already on the remote when each package is handed to the
        // callback, which is what proves the dependent waited.
        final tagsSeen = <String, List<String>>{};
        final scheduler = PublishScheduler(
          packages: packages,
          publishPackage: (package) async {
            tagsSeen[package.name] = await remoteTags();
            await command.prePublish(package);
            await command.publishTag(package);
          },
          command: command,
        );
        await scheduler.run();

        expect(tagsSeen.keys, [_dependency, _dependent]);
        expect(tagsSeen[_dependency], isEmpty);
        expect(tagsSeen[_dependent], ['$_dependency-v$_dependencyVersion']);

        expect(await remoteTags(), <String>{
          '$_dependency-v$_dependencyVersion',
          '$_dependent-v$_dependentVersion',
        });

        // `prePublish` ran `pub upgrade` for both packages.
        for (final package in packages) {
          expect(
            File(p.join(package.path, '.dart_tool', 'package_config.json')),
            predicate<File>((file) => file.existsSync()),
            reason: 'pub upgrade should have run for ${package.name}',
          );
        }
      },
      timeout: const Timeout(Duration(minutes: 5)),
    );

    test('skips a tag which already exists at HEAD', () async {
      final package = command.repoPackages[_dependency]!;
      final tag = command.releaseTag(package);
      await command.runGit(['tag', '-a', tag, '-m', 'Release']);

      await command.publishTag(package);

      expect(
        await remoteTags(),
        isEmpty,
        reason: 'An existing tag at HEAD should not be re-pushed',
      );
    });
  });
}

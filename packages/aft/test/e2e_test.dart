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

// ignore_for_file: overridden_fields

import 'dart:io';

import 'package:aft/src/repo.dart';
import 'package:aws_common/aws_common.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'helpers/descriptors.dart' as d;

void main() {
  final logger = AWSLogger().createChild('E2E');

  group('Repo', () {
    late Repo repo;
    late String baseRef;
    final packageBumps = <String, String>{};

    Future<String> runGit(List<String> args) async {
      final result = await repo.git.runCommand(args);
      final stdout = result.stdout as String;
      logger.info('git ${args.join(' ')}:\n$stdout');
      return stdout.trim();
    }

    Future<String> makeChange(
      String commitTitle,
      List<String> packages, {
      Map<String, String>? trailers,
    }) async {
      for (final package in packages) {
        final newDir = Directory(repo[package].path).createTempSync();
        File(p.join(newDir.path, 'file.txt')).createSync();
      }

      await runGit(['add', '.']);
      await runGit([
        'commit',
        '-m',
        commitTitle,
        if (trailers != null)
          ...trailers.entries
              .expand((e) => ['--trailer', '${e.key}:${e.value}']),
      ]);
      return runGit(['rev-parse', 'HEAD']);
    }

    group('E2E', () {
      const nextVersion = '1.0.0-next.0';
      const coreVersion = '0.1.0';
      const nextConstraint = '>=1.0.0-next.0 <1.0.0-next.1';
      const coreConstraint = '^0.1.0';

      setUp(() async {
        repo = await d.repo([
          d.package(
            'amplify_auth_cognito',
            version: nextVersion,
            dependencies: {
              // Flutter packages in component
              'amplify_analytics_pinpoint': nextConstraint,
              'amplify_core': nextConstraint,

              // Related Dart package
              'amplify_auth_cognito_dart': coreConstraint,

              // Dart package not in component
              'aws_common': coreConstraint,
            },
          ),
          d.package(
            'amplify_analytics_pinpoint',
            version: nextVersion,
          ),
          d.package(
            'amplify_auth_cognito_dart',
            version: coreVersion,
            dependencies: {
              'amplify_core': coreConstraint,
              'aws_common': coreConstraint,
            },
          ),
          d.package(
            'amplify_core',
            version: nextVersion,
            dependencies: {
              'aws_common': coreConstraint,
            },
          ),
          d.package('aws_common', version: coreVersion),
        ]).create();

        await runGit(['add', '.']);
        await runGit(['commit', '-m', 'Add packages']);
        baseRef = await runGit(['rev-parse', 'HEAD']);

        // Make changes that affect:
        // - Only a leaf package
        // - Only one package of a component
        // - Only a root package
        await makeChange('fix(aws_common): Fix type', ['aws_common']);
        await makeChange(
          'chore(amplify_analytics_pinpoint): Update dependency',
          ['amplify_analytics_pinpoint'],
        );
        await makeChange(
          'fix(amplify_analytics_pinpoint)!: Change dependency',
          ['amplify_analytics_pinpoint'],
        );
        await makeChange(
          'feat(amplify_core): New hub events',
          ['amplify_core'],
        );
        await makeChange(
          'feat(auth): New feature',
          [
            'amplify_core',
            'amplify_auth_cognito',
            'amplify_auth_cognito_dart',
          ],
        );
        final coreBump = await makeChange(
          'chore(version): Release core',
          [
            'amplify_core',
            'amplify_auth_cognito_dart',
          ],
          trailers: {
            'Updated-Components': 'amplify_core, amplify_auth_cognito_dart',
          },
        );
        packageBumps['amplify_core'] = coreBump;
        packageBumps['amplify_auth_cognito_dart'] = coreBump;
        final flutterBump = await makeChange(
          'chore(version): Release flutter',
          [
            'amplify_auth_cognito',
            'amplify_analytics_pinpoint',
          ],
          trailers: {
            'Updated-Components': 'Amplify Flutter',
          },
        );
        packageBumps['amplify_core'] = flutterBump;
        packageBumps['amplify_auth_cognito'] = flutterBump;
        packageBumps['amplify_analytics_pinpoint'] = flutterBump;
      });

      Future<GitChanges> changesForPackage(
        String package, {
        required String baseRef,
      }) {
        return repo.changes(baseRef, 'HEAD');
      }

      group('changesForPackage', () {
        group('w/ no version bump', () {
          final packages = {
            'aws_common': 1,
            'amplify_core': 3,
            'amplify_auth_cognito_dart': 2,
            'amplify_auth_cognito': 2,
            'amplify_analytics_pinpoint': 3,
          };
          for (final entry in packages.entries) {
            test(entry.key, () async {
              final numCommits = entry.value;
              final package = repo.allPackages[entry.key]!;
              final changes = await changesForPackage(
                package.name,
                baseRef: baseRef,
              );
              expect(
                changes.commitsByPackage[package],
                hasLength(numCommits),
              );
            });
          }
        });

        group('w/ version bump', () {
          final packages = {
            'aws_common': 1, // since it was never released
            'amplify_core': 0,
            'amplify_auth_cognito_dart': 0,
            'amplify_auth_cognito': 0,
            'amplify_analytics_pinpoint': 0,
          };
          for (final entry in packages.entries) {
            test(entry.key, () async {
              final package = repo.allPackages[entry.key]!;
              final lastBump = await repo.latestBumpRef(package);
              expect(lastBump, packageBumps[package.name]);

              final numCommits = entry.value;
              final changes = await changesForPackage(
                package.name,
                baseRef: lastBump ?? baseRef,
              );
              expect(
                changes.commitsByPackage[package],
                hasLength(numCommits),
              );
            });
          }
        });
      });

      group('calculates changes', () {
        final numCommits = {
          'aws_common': 1,
          'amplify_core': 3,
          'amplify_auth_cognito_dart': 2,
          'amplify_auth_cognito': 2,
          'amplify_analytics_pinpoint': 3,
        };
        final changelogs = {
          'aws_common': '''
## NEXT

### Fixes
- fix(aws_common): Fix type
''',
          'amplify_core': '''
## NEXT

### Features
- feat(amplify_core): New hub events
- feat(auth): New feature
''',
          'amplify_auth_cognito_dart': '''
## NEXT

### Features
- feat(auth): New feature
''',
          'amplify_auth_cognito': '''
## NEXT

### Features
- feat(auth): New feature
''',
          'amplify_analytics_pinpoint': '''
## NEXT

### Breaking Changes
- fix(amplify_analytics_pinpoint)!: Change dependency
''',
        };

        for (final check in numCommits.entries) {
          final packageName = check.key;

          test(packageName, () async {
            final package = repo.allPackages[packageName]!;
            final changes = await changesForPackage(
              package.name,
              baseRef: baseRef,
            );
            final commits = changes.commitsByPackage[package]!;
            expect(commits, hasLength(check.value));

            // Bump changelogs to NEXT
            final updateChangelog = package.changelog.update(
              commits: commits,
            );
            expect(updateChangelog.hasUpdate, true);
            expect(
              updateChangelog.newText,
              equalsIgnoringWhitespace(changelogs[packageName]!),
            );
          });
        }
      });

      test('bumps versions', () async {
        final finalRepo = d.repo([
          d.package(
            'aws_common',
            version: '0.1.1',
            contents: [
              d.pubspec('''
name: aws_common
version: 0.1.1

environment:
  sdk: ^3.0.0
'''),
              d.file('CHANGELOG.md', '''
## 0.1.1

### Fixes
- fix(aws_common): Fix type

## 0.1.0

Initial version.
'''),
            ],
          ),
          d.package(
            'amplify_core',
            version: '1.0.0-next.1',
            contents: [
              d.pubspec('''
name: amplify_core
version: 1.0.0-next.1

environment:
  sdk: ^3.0.0

dependencies:
  aws_common: "^0.1.0"
'''),
              d.file('CHANGELOG.md', '''
## 1.0.0-next.1

### Features
- feat(amplify_core): New hub events
- feat(auth): New feature

## 1.0.0-next.0

Initial version.
'''),
            ],
          ),
          d.package(
            'amplify_auth_cognito_dart',
            version: '0.1.1',
            contents: [
              d.pubspec('''
name: amplify_auth_cognito_dart
version: 0.1.1

environment:
  sdk: ^3.0.0

dependencies:
  amplify_core: ">=1.0.0-next.1 <1.0.0-next.2"
  aws_common: ^0.1.0
'''),
              d.file('CHANGELOG.md', '''
## 0.1.1

### Features
- feat(auth): New feature

## 0.1.0

Initial version.
'''),
            ],
          ),
          d.package(
            'amplify_auth_cognito',
            version: '1.0.0-next.1',
            contents: [
              d.pubspec('''
name: amplify_auth_cognito
version: 1.0.0-next.1

environment:
  sdk: ^3.0.0

dependencies:
  amplify_analytics_pinpoint: ">=1.0.0-next.1 <1.0.0-next.2"
  amplify_auth_cognito_dart: ">=0.1.1 <0.2.0"
  amplify_core: ">=1.0.0-next.1 <1.0.0-next.2"
  aws_common: "^0.1.0"
'''),
              d.file('CHANGELOG.md', '''
## 1.0.0-next.1

### Features
- feat(auth): New feature

## 1.0.0-next.0

Initial version.
'''),
            ],
          ),
          d.package(
            'amplify_analytics_pinpoint',
            version: '1.0.0-next.1',
            contents: [
              d.pubspec('''
name: amplify_analytics_pinpoint
version: 1.0.0-next.1

environment:
  sdk: ^3.0.0
'''),
              d.file('CHANGELOG.md', '''
## 1.0.0-next.1

### Breaking Changes
- fix(amplify_analytics_pinpoint)!: Change dependency

## 1.0.0-next.0

Initial version.
'''),
            ],
          ),
        ]);

        await repo.bumpAllVersions(
          repo.allPackages,
          changesForPackage: (pkg) => changesForPackage(
            pkg.name,
            baseRef: baseRef,
          ),
        );
        await repo.writeChanges();

        await finalRepo.validate();
      });
    });
  });
}

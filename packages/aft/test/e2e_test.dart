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

import 'package:aft/aft.dart';
import 'package:aft/src/repo.dart';
import 'package:aws_common/aws_common.dart';
import 'package:git/git.dart' as git;
import 'package:libgit2dart/libgit2dart.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';

class MockRepo extends Repo {
  MockRepo(
    super.rootDir, {
    required this.repo,
    required super.aftConfig,
    super.logger,
  }) : super(allPackages: {});

  @override
  final Repository repo;
}

void main() {
  final logger = AWSLogger()..logLevel = LogLevel.verbose;

  group('Repo', () {
    late Repo repo;
    late String baseRef;
    final packageBumps = <String, String>{};

    Future<String> runGit(List<String> args) async {
      final result = await git.runGit(
        args,
        processWorkingDir: repo.rootDir.path,
      );
      return (result.stdout as String).trim();
    }

    PackageInfo createPackage(
      String packageName, {
      Map<String, VersionConstraint>? dependencies,
      Version? version,
    }) {
      version ??= Version(0, 1, 0);
      final packagePath = p.join(repo.rootDir.path, 'packages', packageName);
      final pubspec = StringBuffer(
        '''
name: $packageName
version: $version

environment:
  sdk: '>=2.17.0 <4.0.0'
''',
      );
      if (dependencies != null && dependencies.isNotEmpty) {
        pubspec.writeln('dependencies:');
        for (final dependency in dependencies.entries) {
          pubspec.writeln('  ${dependency.key}: "${dependency.value}"');
        }
      }
      final changelog = '''
## $version

Initial version.
''';
      final pubspecUri = Uri.file(p.join(packagePath, 'pubspec.yaml'));
      File.fromUri(pubspecUri)
        ..createSync(recursive: true)
        ..writeAsStringSync(pubspec.toString());
      File(p.join(packagePath, 'CHANGELOG.md'))
        ..createSync(recursive: true)
        ..writeAsStringSync(changelog);

      final package = PackageInfo(
        name: packageName,
        path: packagePath,
        pubspecInfo: PubspecInfo.fromUri(pubspecUri),
        flavor: PackageFlavor.dart,
      );

      repo.allPackages[packageName] = package;
      return package;
    }

    Future<String> makeChange(
      String commitTitle,
      List<String> packages, {
      Map<String, String>? trailers,
    }) async {
      for (final package in packages) {
        final newDir = Directory(p.join(repo.rootDir.path, 'packages', package))
            .createTempSync();
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

    setUp(() async {
      final gitDir = Directory.systemTemp.createTempSync('aft');
      repo = MockRepo(
        gitDir,
        repo: Repository.init(path: gitDir.path),
        logger: logger,
        aftConfig: AftConfig(
          components: const [
            AftComponent(
              name: 'Amplify Flutter',
              packages: [
                'amplify_auth_cognito',
                'amplify_auth_cognito_ios',
              ],
            ),
          ],
          environment: Environment(
            sdk: VersionConstraint.compatibleWith(Version(2, 17, 0)),
            flutter: VersionConstraint.compatibleWith(Version(3, 0, 0)),
            android: const AndroidEnvironment(minSdkVersion: '24'),
            ios: const IosEnvironment(minOSVersion: '13.0'),
            macOS: const MacOSEnvironment(minOSVersion: '13.0'),
          ),
        ),
      );
      await runGit(
        ['commit', '--allow-empty', '-m', 'Initial commit'],
      );
      await runGit(['rev-parse', 'HEAD']);
    });

    group('E2E', () {
      final nextVersion = Version(1, 0, 0, pre: 'next.0');
      final coreVersion = Version(0, 1, 0);
      final nextConstraint = VersionRange(
        min: nextVersion,
        max: Version(1, 0, 0, pre: 'next.1'),
        includeMin: true,
        includeMax: false,
      );
      final coreConstraint = VersionConstraint.compatibleWith(coreVersion);

      setUp(() async {
        createPackage(
          'amplify_auth_cognito',
          version: nextVersion,
          dependencies: {
            'amplify_auth_cognito_ios': nextConstraint,
            'amplify_auth_cognito_dart': coreConstraint,
            'amplify_core': nextConstraint,
            'aws_common': coreConstraint,
          },
        );
        createPackage('amplify_auth_cognito_ios', version: nextVersion);
        createPackage(
          'amplify_auth_cognito_dart',
          version: coreVersion,
          dependencies: {
            'amplify_core': coreConstraint,
            'aws_common': coreConstraint,
          },
        );
        createPackage(
          'amplify_core',
          version: nextVersion,
          dependencies: {
            'aws_common': coreConstraint,
          },
        );
        createPackage('aws_common', version: coreVersion);

        await runGit(['add', '.']);
        await runGit(['commit', '-m', 'Add packages']);
        baseRef = await runGit(['rev-parse', 'HEAD']);

        // Make changes that affect:
        // - Only a leaf package
        // - Only one package of a component
        // - Only a root package
        await makeChange('fix(aws_common): Fix type', ['aws_common']);
        await makeChange(
          'chore(amplify_auth_cognito_ios): Update iOS dependency',
          ['amplify_auth_cognito_ios'],
        );
        await makeChange(
          'fix(amplify_auth_cognito_ios)!: Change iOS dependency',
          ['amplify_auth_cognito_ios'],
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
            'amplify_auth_cognito_ios',
          ],
          trailers: {
            'Updated-Components': 'Amplify Flutter',
          },
        );
        packageBumps['amplify_auth_cognito'] = flutterBump;
        packageBumps['amplify_auth_cognito_ios'] = flutterBump;
      });

      GitChanges changesForPackage(
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
            'amplify_auth_cognito_ios': 3,
          };
          for (final entry in packages.entries) {
            test(entry.key, () {
              final numCommits = entry.value;
              final package = repo.allPackages[entry.key]!;
              expect(
                changesForPackage(
                  package.name,
                  baseRef: baseRef,
                ).commitsByPackage[package],
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
            'amplify_auth_cognito_ios': 0,
          };
          for (final entry in packages.entries) {
            test(entry.key, () {
              final package = repo.allPackages[entry.key]!;
              final lastBump = repo.latestBumpRef(package);
              expect(lastBump, packageBumps[package.name]);

              final numCommits = entry.value;
              expect(
                changesForPackage(
                  package.name,
                  baseRef: lastBump ?? baseRef,
                ).commitsByPackage[package],
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
          'amplify_auth_cognito_ios': 3,
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
          'amplify_auth_cognito_ios': '''
## NEXT

### Breaking Changes
- fix(amplify_auth_cognito_ios)!: Change iOS dependency
''',
        };

        for (final check in numCommits.entries) {
          final packageName = check.key;

          test(packageName, () {
            final package = repo.allPackages[packageName]!;
            final changes = changesForPackage(package.name, baseRef: baseRef);
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

      group('bumps versions', () {
        final finalVersions = {
          'aws_common': '0.1.0+1',
          'amplify_core': '1.0.0-next.0+1',
          'amplify_auth_cognito_dart': '0.1.1',
          'amplify_auth_cognito': '1.0.0-next.1',
          'amplify_auth_cognito_ios': '1.0.0-next.1',
        };
        final updatedChangelogs = {
          'aws_common': '''
## 0.1.0+1

### Fixes
- fix(aws_common): Fix type
''',
          'amplify_core': '''
## 1.0.0-next.0+1

### Features
- feat(amplify_core): New hub events
- feat(auth): New feature
''',
          'amplify_auth_cognito_dart': '''
## 0.1.1

### Features
- feat(auth): New feature
''',
          'amplify_auth_cognito': '''
## 1.0.0-next.1

### Features
- feat(auth): New feature
''',
          'amplify_auth_cognito_ios': '''
## 1.0.0-next.1

### Breaking Changes
- fix(amplify_auth_cognito_ios)!: Change iOS dependency
''',
        };
        final updatedPubspecs = {
          'aws_common': '''
name: aws_common
version: 0.1.0+1

environment:
  sdk: '>=2.17.0 <4.0.0'
''',
          'amplify_core': '''
name: amplify_core
version: 1.0.0-next.0+1

environment:
  sdk: '>=2.17.0 <4.0.0'

dependencies:
  aws_common: "^0.1.0"
''',
          'amplify_auth_cognito_dart': '''
name: amplify_auth_cognito_dart
version: 0.1.1

environment:
  sdk: '>=2.17.0 <4.0.0'

dependencies:
  amplify_core: ">=1.0.0-next.0+1 <1.0.0-next.1"
  aws_common: "^0.1.0"
''',
          'amplify_auth_cognito': '''
name: amplify_auth_cognito
version: 1.0.0-next.1

environment:
  sdk: '>=2.17.0 <4.0.0'

dependencies:
  amplify_auth_cognito_ios: ">=1.0.0-next.1 <1.0.0-next.2"
  amplify_auth_cognito_dart: ">=0.1.1 <0.2.0"
  amplify_core: ">=1.0.0-next.0+1 <1.0.0-next.1"
  aws_common: "^0.1.0"
''',
          'amplify_auth_cognito_ios': '''
name: amplify_auth_cognito_ios
version: 1.0.0-next.1

environment:
  sdk: '>=2.17.0 <4.0.0'
''',
        };

        setUp(() async {
          repo.bumpAllVersions(
            changesForPackage: (pkg) => changesForPackage(
              pkg.name,
              baseRef: baseRef,
            ),
          );
        });

        for (final check in finalVersions.entries) {
          final packageName = check.key;
          test(packageName, () {
            final package = repo.allPackages[packageName]!;
            final newVersion =
                repo.versionChanges.proposedVersion(package.name);
            expect(newVersion.toString(), finalVersions[packageName]);

            final changelog = repo.changelogUpdates[package]!.newText;
            expect(
              changelog,
              equalsIgnoringWhitespace(updatedChangelogs[packageName]!),
            );

            final pubspec = package.pubspecInfo.pubspecYamlEditor.toString();
            expect(
              pubspec,
              equalsIgnoringWhitespace(updatedPubspecs[packageName]!),
            );
          });
        }
      });
    });
  });
}

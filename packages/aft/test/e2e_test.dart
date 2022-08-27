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
import 'package:git/git.dart' as git;
import 'package:libgit2dart/libgit2dart.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';

class MockRepo extends Repo {
  MockRepo(super.rootDir, {required this.repo, super.logger});

  @override
  final Repository repo;

  @override
  final AftConfig aftConfig = const AftConfig(
    components: {
      'amplify': [
        'amplify_auth_cognito',
        'amplify_auth_cognito_ios',
      ],
    },
  );

  @override
  final Map<String, PackageInfo> allPackages = {};
}

void main() {
  group('Repo', () {
    late Repo repo;

    Future<void> runGit(List<String> args) => git.runGit(
          args,
          processWorkingDir: repo.rootDir.path,
          throwOnError: true,
        );

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
  sdk: '>=2.17.0 <3.0.0'
''',
      );
      if (dependencies != null && dependencies.isNotEmpty) {
        pubspec.writeln('dependencies:');
        for (final dependency in dependencies.entries) {
          pubspec.writeln('  ${dependency.key}: ${dependency.value}');
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
        usesMonoRepo: false,
        pubspecInfo: PubspecInfo.fromUri(pubspecUri),
        flavor: PackageFlavor.dart,
      );

      repo.allPackages[packageName] = package;
      return package;
    }

    Future<void> makeChange(
      String commitTitle,
      List<String> packages,
    ) async {
      for (final package in packages) {
        final newDir = Directory(p.join(repo.rootDir.path, 'packages', package))
            .createTempSync();
        File(p.join(newDir.path, 'file.txt')).createSync();
      }

      await runGit(['add', '.']);
      await runGit(['commit', '-m', commitTitle]);
    }

    setUp(() async {
      final gitDir = Directory.systemTemp.createTempSync('aft');
      repo = MockRepo(
        gitDir,
        repo: Repository.init(path: gitDir.path),
      );
      await runGit(['commit', '--allow-empty', '-m', 'Initial commit']);
    });

    test('latestTag', () async {
      // Create tags for packages + components
      await runGit(['tag', 'amplify_v1.0.0-next.0+2']);
      await runGit(['tag', 'amplify_v1.0.0-next.0+1']);
      await runGit(['tag', 'amplify_auth_cognito_v0.6.6']);
      await runGit(['tag', 'amplify_auth_cognito_dart_v0.1.0']);
      await runGit(['tag', 'amplify_auth_cognito_dart_v0.1.1']);
      await runGit(['tag', 'amplify_auth_cognito_dart_v0.2.0']);

      expect(
        repo.latestTag('amplify_auth_cognito'),
        'amplify_v1.0.0-next.0+2',
        reason: 'Package should follow components',
      );
      expect(
        repo.latestTag('amplify'),
        'amplify_v1.0.0-next.0+2',
        reason: 'latestTag should allow component lookups directly',
      );
      expect(
        repo.latestTag('amplify_auth_cognito_dart'),
        'amplify_auth_cognito_dart_v0.2.0',
      );
      expect(repo.latestTag('smithy'), isNull);
    });

    group('E2E', () {
      final nextVersion = Version(1, 0, 0, pre: 'next.0');
      final coreVersion = Version(0, 1, 0);
      final nextConstraint = nextVersion;
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
        await runGit(['tag', 'amplify_v$nextVersion']);
        await runGit(['tag', 'aws_common_v$coreVersion']);
        await runGit(['tag', 'amplify_core_v$coreVersion']);
        await runGit(['tag', 'amplify_auth_cognito_dart_v$coreVersion']);

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
      });

      GitChanges changesForPackage(PackageInfo package) {
        final latestTag = repo.latestTag(package.name)!;
        return repo.changes(latestTag, 'HEAD');
      }

      group('calculates changes', () {
        final numCommits = {
          'aws_common': 1,
          'amplify_core': 2,
          'amplify_auth_cognito_dart': 1,
          'amplify_auth_cognito': 1,
          'amplify_auth_cognito_ios': 2,
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
            final changes = changesForPackage(package);
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
          'aws_common': '0.1.1',
          'amplify_core': '1.0.0-next.0+1',
          'amplify_auth_cognito_dart': '0.1.1',
          'amplify_auth_cognito': '1.0.0-next.1',
          'amplify_auth_cognito_ios': '1.0.0-next.1',
        };

        late VersionChanges updates;
        setUp(() async {
          updates = await bumpVersions(
            repo: repo,
            changesForPackage: changesForPackage,
          );
        });

        for (final check in finalVersions.entries) {
          final packageName = check.key;
          test(packageName, () {
            final package = repo.allPackages[packageName]!;
            final component = repo.aftConfig.componentForPackage(package.name);
            final newVersion = updates.updatedVersions[component]!;
            expect(newVersion.toString(), finalVersions[packageName]);
          });
        }
      });
    });
  });
}

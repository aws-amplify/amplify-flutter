// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: overridden_fields

import 'dart:io';

import 'package:aft/src/command_runner.dart';
import 'package:aft/src/config/config_loader.dart';
import 'package:aft/src/repo.dart';
import 'package:aws_common/aws_common.dart';
import 'package:git/git.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

final logger = AWSLogger().createChild('Version Bump');

const tests = {
  'single_package_chore': [
    Change(title: 'chore: test', packages: ['amplify_auth_cognito']),
  ],
  'single_package_fix': [
    Change(title: 'fix: test', packages: ['amplify_auth_cognito']),
  ],
  'single_package_feat': [
    Change(title: 'feat: test', packages: ['amplify_auth_cognito']),
  ],
  'single_package_breaking': [
    Change(title: 'feat!: test', packages: ['amplify_auth_cognito']),
  ],
  'single_dart_package_chore': [
    Change(title: 'chore: test', packages: ['amplify_auth_cognito_dart']),
  ],
  'single_dart_package_fix': [
    Change(title: 'fix: test', packages: ['amplify_auth_cognito_dart']),
  ],
  'single_dart_package_feat': [
    Change(title: 'feat: test', packages: ['amplify_auth_cognito_dart']),
  ],
  'single_dart_package_breaking': [
    Change(title: 'feat!: test', packages: ['amplify_auth_cognito_dart']),
  ],
  'aws_common_fix': [
    Change(title: 'fix: test', packages: ['aws_common']),
  ],
  'multi_package_update': [
    Change(
      title: 'chore: test secure storage / auth chore',
      packages: ['amplify_secure_storage', 'amplify_auth_cognito_dart'],
    ),
    Change(
      title: 'fix: test auth fix',
      packages: ['amplify_auth_cognito', 'amplify_auth_cognito_dart'],
    ),
    Change(title: 'feat: test common feat', packages: ['aws_common']),
    Change(
      title: 'fix: test db common fix',
      packages: ['amplify_db_common', 'amplify_db_common_dart'],
    ),
    Change(
      title: 'feat: test core/auth feat',
      packages: ['amplify_core', 'amplify_auth_cognito'],
    ),
  ],
  // a multi package update that includes a breaking change in a common package.
  'multi_package_update_with_breaking_common': [
    Change(
      title: 'chore: test secure storage / auth chore',
      packages: ['amplify_secure_storage', 'amplify_auth_cognito_dart'],
    ),
    Change(
      title: 'fix: test auth fix',
      packages: ['amplify_auth_cognito', 'amplify_auth_cognito_dart'],
    ),
    Change(title: 'feat!: test breaking common feat', packages: ['aws_common']),
    Change(
      title: 'fix: test db common fix',
      packages: ['amplify_db_common', 'amplify_db_common_dart'],
    ),
    Change(
      title: 'feat: test core/auth feat',
      packages: ['amplify_core', 'amplify_auth_cognito'],
    ),
  ],
};

// run `dart --define=generate-snapshots=true test ./test/version_bump/version_bump_test.dart --use-data-isolate-strategy`
// to regenerate snapshots
const generateSnapshots = bool.fromEnvironment('generate-snapshots');

void main() {
  group('Version Bump', () {
    final tempDirectoryPath = '/tmp/${uuid()}';
    final sourceDirectory = Directory('test/version_bump/data/repo_snapshot');

    for (final t in tests.entries) {
      final testName = t.key;
      final changes = t.value;
      final tempDirectory = Directory('$tempDirectoryPath/$testName');
      final diffFile = File('test/version_bump/data/snapshots/$testName.diff');
      group(testName, () {
        late Repo repo;
        late String baseRef;

        setUp(() async {
          await copyDirectory(sourceDirectory, tempDirectory);
          await GitDir.init(
            tempDirectory.path,
            allowContent: true,
            initialBranch: 'main',
          );
          repo = await Repo.open(
            AftConfigLoader(workingDirectory: tempDirectory).load(),
          );
          await runGit(repo, ['add', '.']);
          await runGit(repo, ['commit', '-m', 'Initial commit\n']);
          baseRef = await runGit(repo, ['rev-parse', 'HEAD']);
        });

        tearDown(() async {
          if (generateSnapshots) {
            final process = await repo.git.runCommand(['diff', '--unified=0']);
            final diff = process.stdout as String;
            await diffFile.writeAsString(processDiff(diff));
          }
          await tempDirectory.delete(recursive: true);
        });

        test('should generate the expected diff', () async {
          late String headRef;
          for (final change in changes) {
            headRef = await change.commit(repo);
          }

          await run([
            'version-bump',
            '--directory',
            (tempDirectory.path),
            '--base-ref',
            (baseRef),
            '--head-ref',
            (headRef),
            '--skip-build-version',
          ]);

          if (!generateSnapshots) {
            final process = await repo.git.runCommand(['diff', '--unified=0']);
            final actual = processDiff(process.stdout as String);
            final expected = await diffFile.readAsString();
            expect(actual, expected);
          }
        });
      });
    }
  });
}

class Change {
  const Change({required this.title, required this.packages});

  final String title;
  final List<String> packages;

  Future<String> commit(Repo repo) async {
    for (final package in packages) {
      final newDir = Directory(repo[package].path).createTempSync();
      File(p.join(newDir.path, 'file.txt')).createSync();
    }
    await runGit(repo, ['add', '.']);
    await runGit(repo, ['commit', '-m', '$title\n']);
    return runGit(repo, ['rev-parse', 'HEAD']);
  }
}

Future<String> runGit(Repo repo, List<String> args) async {
  final result = await repo.git.runCommand(args);
  final stdout = result.stdout as String;
  logger.verbose('git ${args.join(' ')}:\n$stdout');
  return stdout.trim();
}

Future<void> copyDirectory(Directory source, Directory destination) async {
  for (final e in source.listSync(recursive: true)) {
    if (!File(e.path).existsSync()) {
      continue;
    }
    final path = e.path.replaceFirst(source.path, '');
    logger.verbose('copying to ${destination.path}/$path');
    final file = File('${destination.path}/$path');
    await file.create(recursive: true);
    await file.writeAsString(await File(e.path).readAsString());
  }
}

/// Removes non essential info from the diff
String processDiff(String input) {
  return input
      .split('\n')
      .where((line) => !line.trimLeft().startsWith('index'))
      .where((line) => !line.trimLeft().startsWith('---'))
      .where((line) => !line.trimLeft().startsWith('+++'))
      .where((line) => !line.trimLeft().startsWith('@@'))
      .join('\n');
}

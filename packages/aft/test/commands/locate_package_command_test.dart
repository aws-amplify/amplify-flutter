// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:io';

import 'package:git/git.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

final _aftEntrypoint = p.join(Directory.current.path, 'bin', 'aft.dart');

void main() {
  test(
    'aft locate-package --format=env reports the package facts',
    () async {
      final tempDir = Directory.systemTemp.createTempSync('aft_locate_');
      addTearDown(() => tempDir.deleteSync(recursive: true));
      final repoDir = Directory(p.join(tempDir.path, 'repo'));
      await _createRepo(repoDir);

      final dartPackage = await _runAft(repoDir, [
        'locate-package',
        'aws_common-v1.2.3',
        '--format=env',
      ]);
      printOnFailure('${dartPackage.stdout}\n${dartPackage.stderr}');
      expect(dartPackage.exitCode, 0);
      expect(_envOf(dartPackage), {
        'name': 'aws_common',
        'version': '1.2.3',
        'path': 'packages/aws_common',
        'flavor': 'dart',
      });

      final flutterPackage = await _runAft(repoDir, [
        'locate-package',
        'amplify_flutter-v2.0.0',
        '--format=env',
      ]);
      printOnFailure('${flutterPackage.stdout}\n${flutterPackage.stderr}');
      expect(flutterPackage.exitCode, 0);
      expect(_envOf(flutterPackage)['flavor'], 'flutter');
    },
    timeout: const Timeout(Duration(minutes: 3)),
  );
}

Future<ProcessResult> _runAft(Directory repoDir, List<String> args) =>
    Process.run(Platform.resolvedExecutable, [
      'run',
      _aftEntrypoint,
      '--directory',
      repoDir.path,
      ...args,
    ]);

/// Parses `--format=env` output, ignoring any `pub`/SDK chatter, exactly as the
/// publish workflow's `grep -o` does.
Map<String, String> _envOf(ProcessResult result) {
  final entry = RegExp(r'(name|version|path|flavor)=(\S+)');
  return {
    for (final match in entry.allMatches(result.stdout as String))
      match.group(1)!: match.group(2)!,
  };
}

Future<void> _createRepo(Directory repoDir) async {
  File(p.join(repoDir.path, 'pubspec.yaml'))
    ..createSync(recursive: true)
    ..writeAsStringSync('''
name: aft_locate_fixture
publish_to: none

environment:
  sdk: ^3.0.0
''');

  File(p.join(repoDir.path, 'packages', 'aws_common', 'pubspec.yaml'))
    ..createSync(recursive: true)
    ..writeAsStringSync('''
name: aws_common
version: 1.2.3

environment:
  sdk: ^3.0.0
''');

  // `flutter` in `dependencies` is what makes aft flavor this as Flutter.
  File(p.join(repoDir.path, 'packages', 'amplify_flutter', 'pubspec.yaml'))
    ..createSync(recursive: true)
    ..writeAsStringSync('''
name: amplify_flutter
version: 2.0.0

environment:
  sdk: ^3.0.0

dependencies:
  flutter:
    sdk: flutter
''');

  final gitDir = await GitDir.init(
    repoDir.path,
    allowContent: true,
    initialBranch: 'main',
  );
  await gitDir.runCommand(['config', 'user.email', 'aft@example.com']);
  await gitDir.runCommand(['config', 'user.name', 'aft']);
  await gitDir.runCommand(['add', '.']);
  await gitDir.runCommand(['commit', '-m', 'Initial commit']);
}

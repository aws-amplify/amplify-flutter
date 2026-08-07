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
  group('aft locate-package', () {
    late Directory tempDir;
    late Directory repoDir;

    setUpAll(() async {
      tempDir = Directory.systemTemp.createTempSync('aft_locate_');
      repoDir = Directory(p.join(tempDir.path, 'repo'));
      await _createRepo(repoDir);
    });

    tearDownAll(() => tempDir.deleteSync(recursive: true));

    test('resolves a name to a path', () async {
      final result = await _runAft(repoDir, ['locate-package', 'aws_common']);
      printOnFailure('${result.stdout}\n${result.stderr}');
      expect(result.exitCode, 0);
      expect(_lastLine(result), 'packages/aws_common');
    });

    test('resolves a publish tag to a path', () async {
      final result = await _runAft(repoDir, [
        'locate-package',
        'aws_common-v1.2.3',
      ]);
      printOnFailure('${result.stdout}\n${result.stderr}');
      expect(result.exitCode, 0);
      expect(_lastLine(result), 'packages/aws_common');
    });

    test('--format=env reports all facts for a Dart package', () async {
      final result = await _runAft(repoDir, [
        'locate-package',
        'aws_common-v1.2.3',
        '--format=env',
      ]);
      printOnFailure('${result.stdout}\n${result.stderr}');
      expect(result.exitCode, 0);
      expect(_envOf(result), {
        'name': 'aws_common',
        'version': '1.2.3',
        'path': 'packages/aws_common',
        'flavor': 'dart',
      });
    });

    test('--format=env reports flutter for a Flutter package', () async {
      final result = await _runAft(repoDir, [
        'locate-package',
        'amplify_flutter-v2.0.0',
        '--format=env',
      ]);
      printOnFailure('${result.stdout}\n${result.stderr}');
      expect(result.exitCode, 0);
      expect(_envOf(result), {
        'name': 'amplify_flutter',
        'version': '2.0.0',
        'path': 'packages/amplify_flutter',
        'flavor': 'flutter',
      });
    });

    test('rejects an unknown format', () async {
      final result = await _runAft(repoDir, [
        'locate-package',
        'aws_common',
        '--format=nope',
      ]);
      printOnFailure('${result.stdout}\n${result.stderr}');
      expect(result.exitCode, isNot(0));
    });

    test('fails for an unknown package', () async {
      final result = await _runAft(repoDir, ['locate-package', 'nope-v1.0.0']);
      printOnFailure('${result.stdout}\n${result.stderr}');
      expect(result.exitCode, 1);
      expect(result.stderr, contains("package 'nope-v1.0.0' not found"));
    });
  }, timeout: const Timeout(Duration(minutes: 5)));
}

Future<ProcessResult> _runAft(Directory repoDir, List<String> args) =>
    Process.run(Platform.resolvedExecutable, [
      'run',
      _aftEntrypoint,
      '--directory',
      repoDir.path,
      ...args,
    ]);

/// The last non-empty stdout line, with the SDK's build-hook chatter stripped
/// (it is printed without a trailing newline, so it glues onto real output).
String _lastLine(ProcessResult result) => (result.stdout as String)
    .replaceAll('Running build hooks...', '')
    .split('\n')
    .map((line) => line.trim())
    .where((line) => line.isNotEmpty)
    .last;

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

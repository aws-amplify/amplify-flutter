// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('node')
library;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';
import 'dart:typed_data';

import 'package:actions/actions.dart';
import 'package:checks/checks.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'common.dart';

void main() {
  setupNodeTest();

  group('Node interop', () {
    test('process', () {
      check(process.getEnv('PATH')).isNotNull().isNotEmpty();
      check(() => process.arch).returnsNormally();
      check(() => process.platform).returnsNormally();
    });

    test('fs', () async {
      const prefix = 'prefix';
      final tempDir = await fs.withTempDir(prefix, (tempDir) async {
        check(p.basename(tempDir)).startsWith(prefix);
        return tempDir;
      });
      check(fs.existsSync(tempDir)).isFalse();
    });

    group('child_process', () {
      test('execSync', () {
        check(childProcess.execSync('echo', ['Hello']))
          ..has((res) => res.exitCode, 'exitCode').equals(0)
          ..has((res) => res.stdout as Uint8List, 'stdout')
              .deepEquals(utf8.encode('Hello\n'));
      });

      test('exec', () async {
        await check(childProcess.exec('echo', ['Hello'])).completes(
          it()
            ..has((res) => res.exitCode, 'exitCode').equals(0)
            ..has((res) => res.stdout, 'stdout').equals('Hello\n'),
        );
      });

      test('spawn', () async {
        final proc = childProcess.spawn('echo', ['Hello']);
        unawaited(
          check(proc.stdout!.stream).withQueue.inOrder([
            // ignore: unawaited_futures
            it()..emits(it()..deepEquals(utf8.encode('Hello\n'))),
            // ignore: unawaited_futures
            it()..isDone(),
          ]),
        );
        unawaited(
          check(proc.stderr!.stream).withQueue.isDone(),
        );
        unawaited(
          check((proc.onClose, proc.onExit).wait).completes(
            it()..has((res) => res.$2.toDartInt, 'exitCode').equals(0),
          ),
        );
        await check(proc.onSpawn).completes();
        check(proc.pid?.toDartInt).isNotNull().isGreaterThan(0);
      });

      test('spawn (pipe)', () async {
        final echo = childProcess.spawn('echo', ['Hello']);
        final proc = childProcess.spawn(
          'tee',
          [],
          stdin: echo.stdout,
        );
        unawaited(
          check(proc.stdout!.stream).withQueue.inOrder([
            it()
              // ignore: unawaited_futures
              ..emits(
                it()..deepEquals(utf8.encode('Hello\n')),
              ),
            // ignore: unawaited_futures
            it()..isDone(),
          ]),
        );
        unawaited(
          check(proc.stderr!.stream).withQueue.isDone(),
        );
        unawaited(
          check((proc.onClose, proc.onExit).wait).completes(
            it()..has((res) => res.$2.toDartInt, 'exitCode').equals(0),
          ),
        );
        await check(proc.onSpawn).completes();
        check(proc.pid?.toDartInt).isNotNull().isGreaterThan(0);
      });
    });

    test('os', () {
      check(os.tmpdir()).isNotEmpty();
    });
  });
}

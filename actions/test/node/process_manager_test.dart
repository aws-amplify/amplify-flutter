// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('node')
library;

import 'dart:async';
import 'dart:convert';

import 'package:actions/actions.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:checks/checks.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  setupNodeTest();

  group('NodeProcessManager', () {
    group('runSync', () {
      test('echo', () {
        check(processManager.runSync(['echo', 'Hello']))
          ..has((res) => res.exitCode, 'exitCode').equals(0)
          ..has((res) => res.stdout, 'stdout').equals('Hello\n');
      });
    });

    group('run', () {
      test('echo', () async {
        await check(processManager.run(['echo', 'Hello'])).completes(
          it()
            ..has((res) => res.exitCode, 'exitCode').equals(0)
            ..has((res) => res.stdout, 'stdout').equals('Hello\n'),
        );
      });

      test('pipe', () async {
        final echo = childProcess.spawn('echo', ['Hello']);
        await check(processManager.run(['tee'], pipe: echo)).completes(
          it()
            ..has((res) => res.exitCode, 'exitCode').equals(0)
            ..has((res) => res.stdout, 'stdout').equals('Hello\n'),
        );
      });
    });

    group('start', () {
      for (final mode in ProcessStartMode.values) {
        test(mode.toString(), () async {
          final proc = await processManager.start(
            ['echo', 'Hello'],
            mode: mode,
          );
          final expectedOutput = utf8.encode('Hello\n');
          unawaited(
            check(proc.stdout).withQueue.inOrder([
              if (mode != ProcessStartMode.inheritStdio &&
                  mode != ProcessStartMode.detached)
                // ignore: unawaited_futures
                it()..emits(it()..deepEquals(expectedOutput)),
              // ignore: unawaited_futures
              it()..isDone(),
            ]),
          );
          unawaited(
            check(proc.stderr).withQueue.isDone(),
          );
          check(proc.pid).isGreaterThan(0);
          await check(proc.exitCode).completes(it()..equals(0));
        });
      }

      test('start (pipe)', () async {
        final echo = childProcess.spawn('echo', ['Hello']);
        final proc = await processManager.start(['tee'], pipe: echo);
        unawaited(
          check(proc.stdout).withQueue.inOrder([
            it()
              // ignore: unawaited_futures
              ..emits(it()..deepEquals(utf8.encode('Hello\n'))),
            // ignore: unawaited_futures
            it()..isDone(),
          ]),
        );
        unawaited(check(proc.stderr).withQueue.isDone());
        await check(proc.exitCode).completes(it()..equals(0));
      });
    });
  });
}

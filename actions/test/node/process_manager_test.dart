// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('node')
library;

import 'dart:async';

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
          (it) => it
            ..has((res) => res.exitCode, 'exitCode').equals(0)
            ..has((res) => res.stdout, 'stdout').equals('Hello\n'),
        );
      });

      test('pipe', () async {
        final echo = childProcess.spawn('echo', ['Hello']);
        await check(processManager.run(['tee'], pipe: echo)).completes(
          (it) => it
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
          unawaited(
            expectLater(
              proc.stdout.map(String.fromCharCodes),
              emitsInOrder([
                if (mode != ProcessStartMode.inheritStdio &&
                    mode != ProcessStartMode.detached)
                  'Hello\n',
                emitsDone,
              ]),
            ),
          );
          unawaited(
            check(proc.stderr).withQueue.isDone(),
          );
          check(proc.pid).isGreaterThan(0);
          await check(proc.exitCode).completes((it) => it..equals(0));
        });
      }

      test('start (pipe)', () async {
        final echo = childProcess.spawn('echo', ['Hello']);
        final proc = await processManager.start(['tee'], pipe: echo);
        unawaited(
          expectLater(
            proc.stdout.map(String.fromCharCodes),
            emitsInOrder([
              'Hello\n',
              emitsDone,
            ]),
          ),
        );
        unawaited(check(proc.stderr).withQueue.isDone());
        await check(proc.exitCode).completes((it) => it..equals(0));
      });
    });
  });
}

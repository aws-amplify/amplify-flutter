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
        check(nodeProcessManager.runSync(['echo', 'Hello']))
          ..has((res) => res.exitCode, 'exitCode').equals(0)
          ..has((res) => res.stdout, 'stdout').equals('Hello\n');
      });
    });

    group('run', () {
      test('echo', () async {
        await check(nodeProcessManager.run(['echo', 'Hello'])).completes(
          it()
            ..has((res) => res.exitCode, 'exitCode').equals(0)
            ..has((res) => res.stdout, 'stdout').equals('Hello\n'),
        );
      });

      test('pipe', () async {
        final echo = childProcess.spawn('echo', ['Hello']);
        await check(nodeProcessManager.run(['tee'], pipe: echo)).completes(
          it()
            ..has((res) => res.exitCode, 'exitCode').equals(0)
            ..has((res) => res.stdout, 'stdout').equals('Hello\n'),
        );
      });
    });

    group('start', () {
      for (final mode in ProcessStartMode.values) {
        test(mode.toString(), () async {
          final proc = await nodeProcessManager.start(
            ['echo', 'Hello'],
            mode: mode,
          );
          check(
            because: 'spawn listeners should have deregistered.',
            proc.jsProcess.eventNames,
          ).deepEquals(['error']);
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
          if (mode == ProcessStartMode.normal) {
            check(
              because: 'stdout listeners should have registered',
              proc.jsProcess.stdout!.eventNames,
            ).length.isGreaterThan(1);
            check(
              because: 'stderr listeners should have registered',
              proc.jsProcess.stderr!.eventNames,
            ).length.isGreaterThan(1);
          }
          await check(proc.exitCode).completes(it()..equals(0));
          await proc.close();
          if (mode == ProcessStartMode.normal) {
            check(
              because: 'stream listeners should have deregistered',
              [
                ...proc.jsProcess.stdout!.eventNames,
                ...proc.jsProcess.stderr!.eventNames,
              ],
            ).isEmpty();
          }
        });
      }

      test('start (pipe)', () async {
        final echo = childProcess.spawn('echo', ['Hello']);
        final proc = await nodeProcessManager.start(['tee'], pipe: echo);
        check(
          because: 'spawn listeners should have deregistered.',
          proc.jsProcess.eventNames,
        ).deepEquals(['error']);
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
        check(
          because: 'stdout listeners should have registered',
          proc.jsProcess.stdout!.eventNames,
        ).length.isGreaterThan(1);
        check(
          because: 'stderr listeners should have registered',
          proc.jsProcess.stderr!.eventNames,
        ).length.isGreaterThan(1);
        await check(proc.exitCode).completes(it()..equals(0));
        await proc.close();
        check(
          because: 'stream listeners should have deregistered',
          [
            ...proc.jsProcess.stdout!.eventNames,
            ...proc.jsProcess.stderr!.eventNames,
          ],
        ).isEmpty();
      });
    });
  });
}

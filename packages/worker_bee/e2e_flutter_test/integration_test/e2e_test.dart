// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:e2e/common.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('WorkerBee', () {
    group('', () {
      testWidgets(
        '',
        (_) => testWorker(
          jsEntrypoint: 'packages/e2e/workers.js',
        ),
      );

      testWidgets(
        '(m, O4)',
        (_) => testWorker(
          jsEntrypoint: 'packages/e2e/workers.min.js',
        ),
        skip: !kIsWeb,
      );
    });

    group('| no result', () {
      testWidgets(
        '',
        (_) => testWorkerNoResult(
          jsEntrypoint: 'packages/e2e/workers.js',
        ),
      );

      testWidgets(
        '(m, O4)',
        (_) => testWorkerNoResult(
          jsEntrypoint: 'packages/e2e/workers.min.js',
        ),
        skip: !kIsWeb,
      );
    });

    group('| void result', () {
      testWidgets(
        '',
        (_) => testWorkerVoidResult(
          jsEntrypoint: 'packages/e2e/workers.js',
        ),
      );

      testWidgets(
        '(m, O4)',
        (_) => testWorkerVoidResult(
          jsEntrypoint: 'packages/e2e/workers.min.js',
        ),
        skip: !kIsWeb,
      );
    });

    group('| null result', () {
      testWidgets(
        '',
        (_) => testWorkerNullResult(
          jsEntrypoint: 'packages/e2e/workers.js',
        ),
      );

      testWidgets(
        '(m, O4)',
        (_) => testWorkerNullResult(
          jsEntrypoint: 'packages/e2e/workers.min.js',
        ),
        skip: !kIsWeb,
      );
    });

    group('| throws', () {
      testWidgets(
        '',
        (_) => testWorkerThrows(
          jsEntrypoint: 'packages/e2e/workers.js',
        ),
      );

      testWidgets(
        '(m, O4)',
        (_) => testWorkerThrows(
          jsEntrypoint: 'packages/e2e/workers.min.js',
        ),
        skip: !kIsWeb,
      );
    });
  });
}

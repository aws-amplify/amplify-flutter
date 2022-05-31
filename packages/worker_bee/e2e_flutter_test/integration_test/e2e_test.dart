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

import 'package:e2e_test/common.dart';
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
          jsEntrypoint: 'packages/e2e_test/workers.js',
        ),
      );

      testWidgets(
        '(m, O4)',
        (_) => testWorker(
          jsEntrypoint: 'packages/e2e_test/workers.min.js',
        ),
        skip: !kIsWeb,
      );
    });

    group('| no result', () {
      testWidgets(
        '',
        (_) => testWorkerNoResult(
          jsEntrypoint: 'packages/e2e_test/workers.js',
        ),
      );

      testWidgets(
        '(m, O4)',
        (_) => testWorkerNoResult(
          jsEntrypoint: 'packages/e2e_test/workers.min.js',
        ),
        skip: !kIsWeb,
      );
    });

    group('| void result', () {
      testWidgets(
        '',
        (_) => testWorkerVoidResult(
          jsEntrypoint: 'packages/e2e_test/workers.js',
        ),
      );

      testWidgets(
        '(m, O4)',
        (_) => testWorkerVoidResult(
          jsEntrypoint: 'packages/e2e_test/workers.min.js',
        ),
        skip: !kIsWeb,
      );
    });

    group('| null result', () {
      testWidgets(
        '',
        (_) => testWorkerNullResult(
          jsEntrypoint: 'packages/e2e_test/workers.js',
        ),
      );

      testWidgets(
        '(m, O4)',
        (_) => testWorkerNullResult(
          jsEntrypoint: 'packages/e2e_test/workers.min.js',
        ),
        skip: !kIsWeb,
      );
    });

    group('| throws', () {
      testWidgets(
        '',
        (_) => testWorkerThrows(
          jsEntrypoint: 'packages/e2e_test/workers.js',
        ),
      );

      testWidgets(
        '(m, O4)',
        (_) => testWorkerThrows(
          jsEntrypoint: 'packages/e2e_test/workers.min.js',
        ),
        skip: !kIsWeb,
      );
    });
  });
}

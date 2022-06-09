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

@TestOn('browser')

import 'package:e2e_test/common.dart';
import 'package:test/test.dart';

void main() {
  group('WorkerBee', () {
    group('', () {
      test(
        'dart2Js',
        () => testWorker(
          jsEntrypoint: 'packages/e2e_test/workers.js',
        ),
      );

      test(
        'dart2Js (m, O4)',
        () => testWorker(
          jsEntrypoint: 'packages/e2e_test/workers.min.js',
        ),
      );
    });

    group('| no result', () {
      test(
        'dart2Js',
        () => testWorkerNoResult(
          jsEntrypoint: 'packages/e2e_test/workers.js',
        ),
      );

      test(
        'dart2Js (m, O4)',
        () => testWorkerNoResult(
          jsEntrypoint: 'packages/e2e_test/workers.min.js',
        ),
      );
    });

    group('| void result', () {
      test(
        'dart2Js',
        () => testWorkerVoidResult(
          jsEntrypoint: 'packages/e2e_test/workers.js',
        ),
      );

      test(
        'dart2Js (m, O4)',
        () => testWorkerVoidResult(
          jsEntrypoint: 'packages/e2e_test/workers.min.js',
        ),
      );
    });

    group('| null result', () {
      test(
        'dart2Js',
        () => testWorkerNullResult(
          jsEntrypoint: 'packages/e2e_test/workers.js',
        ),
      );

      test(
        'dart2Js (m, O4)',
        () => testWorkerNullResult(
          jsEntrypoint: 'packages/e2e_test/workers.min.js',
        ),
      );
    });

    group('| throws', () {
      test(
        'dart2Js',
        () => testWorkerThrows(
          jsEntrypoint: 'packages/e2e_test/workers.js',
        ),
      );

      test(
        'dart2Js (m, O4)',
        () => testWorkerThrows(
          jsEntrypoint: 'packages/e2e_test/workers.min.js',
        ),
      );
    });
  });
}

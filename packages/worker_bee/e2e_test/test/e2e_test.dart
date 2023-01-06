// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:e2e/common.dart';
import 'package:test/test.dart';
import 'package:worker_bee/worker_bee.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('WorkerBee', () {
    test('', testWorker);

    test('| no result', testWorkerNoResult);

    test('| void result', testWorkerVoidResult);

    test('| null result', testWorkerNullResult);

    test('| throws', testWorkerThrows);
  });
}

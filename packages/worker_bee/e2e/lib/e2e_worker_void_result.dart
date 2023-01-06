// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:worker_bee/worker_bee.dart';

import 'e2e_message.dart';
import 'e2e_worker_void_result.worker.dart';

@WorkerBee('lib/workers.dart')
abstract class E2EWorkerVoidResult extends WorkerBeeBase<E2EMessage, void> {
  E2EWorkerVoidResult() : super(serializers: serializers);
  factory E2EWorkerVoidResult.create() = E2EWorkerVoidResultImpl;

  @override
  Future<void> run(
    Stream<E2EMessage> listen,
    StreamSink<void> respond,
  ) async {
    await listen.first;
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:worker_bee/worker_bee.dart';

import 'e2e_message.dart';
import 'e2e_worker_null_result.worker.dart';

@WorkerBee('lib/workers.dart')
abstract class E2EWorkerNullResult
    extends WorkerBeeBase<E2EMessage, E2EResult?> {
  E2EWorkerNullResult() : super(serializers: serializers);
  factory E2EWorkerNullResult.create() = E2EWorkerNullResultImpl;

  @override
  Future<E2EResult?> run(
    Stream<E2EMessage> listen,
    StreamSink<E2EResult?> respond,
  ) async {
    final event = await listen.first;
    // Send a null event
    respond.add(null);

    // Complete with a result
    final result = E2EResult((b) => b.message.replace(event));
    return result;
  }
}

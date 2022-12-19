// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:worker_bee/worker_bee.dart';

import 'e2e_message.dart';
import 'e2e_worker_no_result.worker.dart';

@WorkerBee('lib/workers.dart')
abstract class E2EWorkerNoResult extends WorkerBeeBase<E2EMessage, E2EResult> {
  E2EWorkerNoResult() : super(serializers: serializers);
  factory E2EWorkerNoResult.create() = E2EWorkerNoResultImpl;

  @override
  Future<E2EResult?> run(
    Stream<E2EMessage> listen,
    StreamSink<E2EResult> respond,
  ) async {
    // Reflect a received message
    final event = await listen.first;
    final result = E2EResult((b) => b.message.replace(event));
    respond.add(result);

    // Complete with no result
    return null;
  }
}

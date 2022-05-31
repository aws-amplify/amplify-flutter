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

import 'dart:async';

import 'package:worker_bee/worker_bee.dart';
import 'e2e_message.dart';
import 'e2e_worker_no_result.worker.dart';

@WorkerBee()
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

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
import 'e2e_worker_throws.worker.dart';

@WorkerBee()
abstract class E2EWorkerThrows extends WorkerBeeBase<E2EMessage, E2EResult> {
  E2EWorkerThrows() : super(serializers: serializers);
  factory E2EWorkerThrows.create() = E2EWorkerThrowsImpl;

  @override
  Future<E2EResult> run(
    Stream<E2EMessage> listen,
    StreamSink<E2EResult> respond,
  ) async {
    await listen.first;
    // ignore: only_throw_errors
    throw ':(';
  }
}

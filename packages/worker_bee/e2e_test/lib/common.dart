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

import 'package:aws_common/aws_common.dart';
import 'package:e2e_test/e2e_message.dart';
import 'package:e2e_test/e2e_worker.dart';
import 'package:e2e_test/e2e_worker_no_result.dart';
import 'package:e2e_test/e2e_worker_null_result.dart';
import 'package:e2e_test/e2e_worker_throws.dart';
import 'package:e2e_test/e2e_worker_void_result.dart';
import 'package:test/test.dart';
import 'package:worker_bee/worker_bee.dart';

E2EMessage createMessage() => message;

void _expectMessage(E2EMessage workerMessage) {
  final message = createMessage();
  expect(workerMessage.bigInt, equals(message.bigInt));
  expect(workerMessage.bool_, equals(message.bool_));
  expect(
    workerMessage.builtList.toList(),
    orderedEquals(message.builtList.toList()),
  );
  expect(
    workerMessage.builtListMultimap.toMap(),
    equals(message.builtListMultimap.toMap()),
  );
  expect(workerMessage.builtMap.toMap(), equals(message.builtMap.toMap()));
  expect(workerMessage.builtSet.toSet(), equals(message.builtSet.toSet()));
  expect(workerMessage.dateTime, equals(message.dateTime));
  expect(workerMessage.double_, equals(message.double_));
  expect(workerMessage.duration, equals(message.duration));
  expect(workerMessage.int64, equals(message.int64));
  expect(workerMessage.int_, equals(message.int_));
  expect(workerMessage.jsonObject.value, equals(message.jsonObject.value));
  expect(workerMessage.num_, equals(message.num_));
  expect(workerMessage.regExp.pattern, equals(message.regExp.pattern));
  expect(workerMessage.uri, equals(message.uri));
}

Future<void> testWorker({String? jsEntrypoint}) async {
  final message = createMessage();

  final worker = E2EWorker.create();
  worker.logs.listen(safePrint);
  await worker.spawn(jsEntrypoint: jsEntrypoint);
  worker.add(message);

  final messages = await worker.stream.take(1).toList();
  final result = await Result.release(worker.result);
  expect(result, isNotNull);
  for (final workerMessage in [...messages, result].map((el) => el!.message)) {
    _expectMessage(workerMessage);
  }

  await worker.close();
}

Future<void> testWorkerThrows({String? jsEntrypoint}) async {
  final message = createMessage();

  final worker = E2EWorkerThrows.create();
  worker.logs.listen(safePrint);
  await worker.spawn(jsEntrypoint: jsEntrypoint);
  worker.sink.add(message);

  await expectLater(worker.stream, emitsError(anything));
  await expectLater(worker.result, completion(isA<ErrorResult>()));

  await worker.close();
}

Future<void> testWorkerNoResult({String? jsEntrypoint}) async {
  final message = createMessage();

  final worker = E2EWorkerNoResult.create();
  worker.logs.listen(safePrint);
  await worker.spawn(jsEntrypoint: jsEntrypoint);
  worker.sink.add(message);

  final messages = await worker.stream.take(1).toList();
  await expectLater(Result.release(worker.result), completion(isNull));
  for (final workerMessage in messages.map((el) => el.message)) {
    _expectMessage(workerMessage);
  }

  await worker.close();
}

Future<void> testWorkerNullResult({String? jsEntrypoint}) async {
  final message = createMessage();

  final worker = E2EWorkerNullResult.create();
  worker.logs.listen(safePrint);
  await worker.spawn(jsEntrypoint: jsEntrypoint);
  worker.sink.add(message);

  expect(worker.stream, emitsInOrder([isNull, emitsDone]));
  final result = await Result.release(worker.result);
  expect(result, isNotNull);
  _expectMessage(result!.message);

  await worker.close();
}

Future<void> testWorkerVoidResult({String? jsEntrypoint}) async {
  final message = createMessage();

  final worker = E2EWorkerVoidResult.create();
  worker.logs.listen(safePrint);
  await worker.spawn(jsEntrypoint: jsEntrypoint);
  worker.sink.add(message);

  await expectLater(worker.stream, emitsDone);
  await expectLater(Result.release(worker.result), completes);

  await worker.close();
}

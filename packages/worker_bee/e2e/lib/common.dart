// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:e2e/e2e_message.dart';
import 'package:e2e/e2e_worker.dart';
import 'package:e2e/e2e_worker_no_result.dart';
import 'package:e2e/e2e_worker_null_result.dart';
import 'package:e2e/e2e_worker_throws.dart';
import 'package:e2e/e2e_worker_void_result.dart';
import 'package:test/test.dart';
import 'package:worker_bee/worker_bee.dart';

final _logger = AWSLogger();

void _logMessage(AWSLogger logger, LogEntry entry) {
  logger.log(
    entry.level,
    entry.message,
    entry.error,
    entry.stackTrace,
  );
}

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
  final logger = _logger.createChild(worker.name);
  worker.logs.listen((entry) => _logMessage(logger, entry));
  await worker.spawn(jsEntrypoint: jsEntrypoint);
  worker.sink.add(message);

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
  final logger = _logger.createChild(worker.name);
  worker.logs.listen((entry) => _logMessage(logger, entry));
  await worker.spawn(jsEntrypoint: jsEntrypoint);
  worker.sink.add(message);

  await expectLater(worker.stream, emitsError(anything));
  await expectLater(worker.result, completion(isA<ErrorResult>()));

  await worker.close();
}

Future<void> testWorkerNoResult({String? jsEntrypoint}) async {
  final message = createMessage();

  final worker = E2EWorkerNoResult.create();
  final logger = _logger.createChild(worker.name);
  worker.logs.listen((entry) => _logMessage(logger, entry));
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
  final logger = _logger.createChild(worker.name);
  worker.logs.listen((entry) => _logMessage(logger, entry));
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
  final logger = _logger.createChild(worker.name);
  worker.logs.listen((entry) => _logMessage(logger, entry));
  await worker.spawn(jsEntrypoint: jsEntrypoint);
  worker.sink.add(message);

  await expectLater(worker.stream, emitsDone);
  await expectLater(Result.release(worker.result), completes);

  await worker.close();
}

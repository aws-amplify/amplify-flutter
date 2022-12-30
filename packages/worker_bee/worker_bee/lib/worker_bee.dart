// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Multi-platform workers for Dart (Web, VM).
library worker_bee;

import 'dart:async';

import 'package:async/async.dart';
import 'package:worker_bee/src/common.dart';
import 'package:worker_bee/src/preamble.dart';
import 'package:worker_bee/src/vm/impl.dart'
    if (dart.library.js) 'package:worker_bee/src/js/impl.dart';

export 'package:async/async.dart';
export 'package:aws_common/aws_common.dart'
    show AWSLogger, LogEntry, LogLevel, AWSLoggerPlugin;
export 'package:stream_transform/stream_transform.dart';
export 'package:worker_bee/src/exception/worker_bee_exception.dart'
    show WorkerBeeException;
export 'package:worker_bee/src/logging/worker_log_entry.dart';
export 'package:worker_bee/src/preamble.dart' hide runTraced;
export 'package:worker_bee/src/worker_bee_vm.dart'
    if (dart.library.js) 'package:worker_bee/src/worker_bee_js.dart';

/// {@template worker_bee.worker_bee}
/// Annotation class for marking worker bees.
///
/// ```dart
/// @WorkerBee()
/// class MyWorker extends WorkerBeeBase<MyMessage, void> {
///   @override
///   Future<void> run(Stream<MyMessage> listen, StreamSink<MyMessage> respond) async {
///     // ...
///   }
/// }
/// ```
/// {@endtemplate}
class WorkerBee {
  /// {@macro worker_bee.worker_bee}
  const WorkerBee(this.hivePath);

  /// The path to the hive containing this worker, relative to the package root.
  final String hivePath;
}

/// {@template worker_bee.worker_hive}
/// Annotation class for the `main` method which marks your workers' entrypoint,
/// i.e. the method you call [runHive] from.
///
/// ```dart
/// @WorkerHive([
///   MyWorker,
/// ])
/// void main() {
///   runHive(workers, () {});
/// }
/// ```
/// {@endtemplate}
class WorkerHive {
  /// {@macro worker_bee.worker_hive}
  const WorkerHive(this.workers);

  /// The list of worker bee types.
  final List<Type> workers;
}

/// {@template worker_bee.worker_bee_base}
/// The base class for all worker bees.
///
/// Classes annotated with [WorkerBee] must extend this class.
/// {@endtemplate}
abstract class WorkerBeeBase<Request extends Object, Response>
    extends WorkerBeeCommon<Request, Response>
    with WorkerBeeImpl<Request, Response> {
  /// {@macro worker_bee.worker_bee_base}
  WorkerBeeBase({
    super.serializers,
  });
}

/// Helper for casting [StreamSink]s.
extension CastStreamSink<I> on StreamSink<I> {
  /// Casts the sink to another type.
  StreamSink<O> cast<O>() => transform(StreamSinkTransformer.fromHandlers());
}

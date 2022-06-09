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

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:worker_bee/src/serializers/serializers.dart';
import 'package:worker_bee/worker_bee.dart';

Type _typeOf<T>() => T;
final _voidType = _typeOf<void>();

/// {@template worker_bee.worker_bee_common}
/// The common (platform-agnostic) implementations for a worker bee.
///
/// The actual base class mixes in platform-specific code to this class.
/// {@endtemplate}
abstract class WorkerBeeCommon<Request extends Object, Response>
    implements Closeable {
  /// {@template worker_bee.worker_bee_common}
  WorkerBeeCommon({
    Serializers? serializers,
  }) : serializers = serializers == null
            ? workerBeeSerializers
            : (serializers.toBuilder()
                  ..addAll(workerBeeSerializers.serializers))
                .build() {
    _checkSerializers();
    _initLogger();
  }

  // Check that a serializer for the request and response types are included.
  void _checkSerializers() {
    final hasRequestSerializer = serializers.serializerForType(Request) != null;
    if (!hasRequestSerializer) {
      throw StateError(
        'Worker did not include serializer for request type ($Request)',
      );
    }

    final hasResponseSerializer =
        serializers.serializerForType(Response) != null;

    if (
        // Cannot check `Response != void`
        _typeOf<Response>() != _voidType &&
            // No determination can be made when Response is nullable
            _typeOf<Response>() != _typeOf<Response?>() &&
            !hasResponseSerializer) {
      throw StateError(
        'Worker did not include serializer for response type ($Response)',
      );
    }
  }

  /// Listens for local messages.
  void _initLogger() {
    logger.level = Level.ALL;
    logger.onRecord.listen((record) {
      logSink.sink.add(
        LogMessage.fromRecord(
          name,
          record,
          local: false,
        ),
      );
      if (logsController.isClosed) return;
      logsController.add(
        LogMessage.fromRecord(
          isRemoteWorker ? name : 'Main',
          record,
          local: !isRemoteWorker,
        ),
      );
    });
  }

  /// Operations which must complete before calling [close].
  final List<CancelableOperation<void>> _pendingOperations = [];

  /// Adds a Future to track which will be closed on [close].
  @protected
  void addPendingOperation(CancelableOperation<void> pendingOp) {
    _pendingOperations.add(pendingOp);
  }

  /// The name of the worker.
  String get name;

  bool _isRemoteWorker = false;

  /// Whether the worker is running on a separate thread.
  bool get isRemoteWorker => _isRemoteWorker;

  /// The internal-use logger.
  @protected
  late final Logger logger = Logger.detached(name);

  /// The logs sink, for outgoing messages (when in a worker).
  @protected
  final StreamSinkCompleter<LogMessage> logSink = StreamSinkCompleter();

  /// Configures logging for the worker.
  set _logsChannel(StreamChannel<LogMessage> channel) {
    logSink.setDestinationSink(channel.sink);

    // Incoming messages (from the worker) should be logged locally
    channel.stream.listen((log) {
      if (logsController.isClosed) return;
      logsController.add(log);
    });
  }

  /// The log stream for external listening.
  @protected
  final StreamController<LogMessage> logsController =
      StreamController.broadcast(sync: true);

  /// The logger to use for all messages.
  Stream<LogMessage> get logs => logsController.stream;

  /// Serializers for message and result types.
  @protected
  final Serializers serializers;

  /// The top-level entrypoint for the VM.
  Function get vmEntrypoint => throw UnimplementedError();

  /// The script URL for the compiled workers.
  String get jsEntrypoint => throw UnimplementedError();

  /// The fallback URLs for the JS worker.
  List<String> get fallbackUrls => throw UnimplementedError();

  /// {@template worker_bee.worker_entrypoint_override}
  /// The alternative entrypoint used to spawn workers in the pool.
  ///
  /// If this pool manager was spawned in a web worker with a different
  /// entrypoint than [jsEntrypoint], use that to also spawn workers since
  /// it's not possible to relay that information otherwise.
  /// {@endtemplate}
  String? get workerEntrypointOverride;

  /// Runs the worker in a separate thread/WebWorker.
  ///
  /// Listen to the spawning thread using [listen] and respond using [respond].
  ///
  /// > Should not be called directly! Use [spawn] to spawn a worker, and use [stream]
  /// > and [sink] to communicate with it.
  @protected
  Future<Response?> run(Stream<Request> listen, StreamSink<Response> respond);

  /// Starts a remote worker and waits for it to connect.
  ///
  /// Optionally, you can override the [jsEntrypoint] for this call.
  Future<void> spawn({String? jsEntrypoint});

  /// Connects to a spawning thread.
  ///
  /// Should only be called from a worker bee.
  @mustCallSuper
  Future<void> connect({
    StreamChannel<LogMessage>? logsChannel,
  }) async {
    _isRemoteWorker = true;
    if (logsChannel != null) {
      _logsChannel = logsChannel;
    }
    logger.finest('Connected from worker');
  }

  /// The asynchronous ready trigger.
  @protected
  final Completer<void> ready = Completer();

  final StreamSinkCompleter<Request> _sinkCompleter = StreamSinkCompleter();
  final StreamController<Response> _streamController =
      StreamController.broadcast(sync: true);
  final Completer<Result<Response?>> _resultCompleter = Completer.sync();

  /// Whether the worker bee has been completed and/or is closed.
  bool get isCompleted => _resultCompleter.isCompleted;

  /// Internal method for completing successfully with a result.
  @protected
  void complete(Response? result) {
    if (isCompleted) return;
    logger.finest('Finished with result: $result');
    _resultCompleter.complete(Result.value(result));
    close(force: false);
  }

  /// Internal method for completing with an error.
  @protected
  void completeError(Object error, [StackTrace? stackTrace]) {
    logger.severe('Error in worker', error, stackTrace);
    if (!isCompleted) {
      _resultCompleter.complete(Result.error(error, stackTrace));
    }
    close(force: true);
  }

  late final Stream<Response> _stream = _streamController.stream;

  /// The stream of responses.
  Stream<Response> get stream => _stream;

  @protected
  set stream(Stream<Response> stream) {
    _streamController
        .addStream(stream, cancelOnError: true)
        .whenComplete(_streamController.close);
  }

  /// The sink for requests.
  StreamSink<Request> get sink => _sinkCompleter.sink;

  @protected
  set sink(StreamSink<Request> sink) {
    _sinkCompleter.setDestinationSink(sink);
  }

  /// The result of the worker bee's computation.
  Future<Result<Response?>> get result => _resultCompleter.future;

  /// Add an event to the worker's [sink].
  void add(Request event) => sink.add(event);

  final AsyncMemoizer<void> _closeMemoizer = AsyncMemoizer();

  @override
  @mustCallSuper
  Future<void> close({
    bool force = false,
  }) =>
      _closeMemoizer.runOnce(() async {
        logger.finest('Closing worker (force=$force)');
        await Future.wait(
          _pendingOperations.map(
            (op) => force ? op.cancel() : op.valueOrCancellation(),
          ),
        );
        await sink.close();
      });
}

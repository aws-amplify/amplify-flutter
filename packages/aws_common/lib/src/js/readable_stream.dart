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

library aws_common.js.readable_stream;

import 'dart:async';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart' as js_util;

import 'common.dart';
import 'promise.dart';

/// {@template aws_common.js.readable_stream}
/// An object containing methods and properties that define how the constructed
/// [ReadableStream] will behave.
/// {@endtemplate}
@JS()
@staticInterop
@anonymous
class UnderlyingSource {
  /// {@macro aws_common.js.readable_stream}
  factory UnderlyingSource({
    /// This is a method, called immediately when the object is constructed.
    ///
    /// The contents of this method are defined by the developer, and should aim
    /// to get access to the stream source, and do anything else required to set
    /// up the stream functionality. If this process is to be done
    /// asynchronously, it can return a promise to signal success or failure.
    ///
    /// The `controller` parameter passed to this method is a
    /// [ReadableStreamDefaultController] or a [ReadableByteStreamController],
    /// depending on the value of the `type` property. This can be used by the
    /// developer to control the stream during set up.
    FutureOr<void> Function(ReadableStreamController controller)? start,

    /// This method, also defined by the developer, will be called repeatedly
    /// when the stream's internal queue of chunks is not full, up until it
    /// reaches its high water mark.
    ///
    /// If pull() returns a promise, then it won't be called again until that
    /// promise fulfills; if the promise rejects, the stream will become
    /// errored.
    ///
    /// The `controller` parameter passed to this method is a
    /// [ReadableStreamDefaultController] or a [ReadableByteStreamController],
    /// depending on the value of the type property. This can be used by the
    /// developer to control the stream as more chunks are fetched.
    FutureOr<void> Function(ReadableStreamController controller)? pull,

    /// This method, also defined by the developer, will be called if the app
    /// signals that the stream is to be cancelled
    /// (e.g. if `ReadableStream.cancel` is called).
    ///
    /// The contents should do whatever is necessary to release access to the
    /// stream source. If this process is asynchronous, it can return a promise
    /// to signal success or failure. The reason parameter contains a
    /// `DOMString` describing why the stream was cancelled.
    FutureOr<void> Function([
      String? reason,
      ReadableStreamController? controller,
    ])?
        cancel,

    /// This property controls what type of readable stream is being dealt with.
    ReadableStreamType type = ReadableStreamType.default$,

    /// For byte streams, the developer can set the autoAllocateChunkSize with
    /// a positive integer value to turn on the stream's auto-allocation
    /// feature.
    ///
    /// With this turned on, the stream implementation will automatically
    /// allocate an `ArrayBuffer` with a size of the given integer, and the
    /// consumer can also use a default reader.
    int? autoAllocateChunkSize,
  }) {
    final startFn = start == null
        ? undefined
        : start is Future<void> Function(ReadableStreamController)
            ? allowInterop((ReadableStreamController controller) {
                return Promise.fromFuture(start(controller));
              })
            : allowInterop(start);
    final pullFn = pull == null
        ? undefined
        : pull is Future<void> Function(ReadableStreamController)
            ? allowInterop((ReadableStreamController controller) {
                return Promise.fromFuture(pull(controller));
              })
            : allowInterop(pull);
    final cancelFn = cancel == null
        ? undefined
        : cancel is Future<void> Function([
            String? reason,
            ReadableStreamController? controller,
          ])
            ? allowInterop((
                String? reason,
                ReadableStreamController? controller,
              ) {
                return Promise.fromFuture(cancel(reason, controller));
              })
            : allowInterop(cancel);
    return UnderlyingSource._(
      start: startFn,
      pull: pullFn,
      cancel: cancelFn,
      type: type.jsValue,
      autoAllocateChunkSize: autoAllocateChunkSize ?? undefined,
    );
  }

  external factory UnderlyingSource._({
    Object? start,
    Object? pull,
    Object? cancel,
    String? type,
    int? autoAllocateChunkSize,
  });
}

/// The type of [ReadableStream] and its associated [ReadableStreamController].
enum ReadableStreamType with JSEnum {
  /// Creates a [ReadableByteStreamController] capable of handling a BYOB
  /// (bring your own buffer)/byte stream.
  bytes,

  /// Creates a [ReadableStreamDefaultController].
  default$,
}

/// {@template aws_common.js.readable_stream_controller}
/// Interface for accessing the internal state/queue of a [ReadableStream].
///
/// Similar to a Dart [StreamController].
/// {@endtemplate}
@JS()
@staticInterop
abstract class ReadableStreamController {}

/// {@macro aws_common.js.readable_stream_controller}
extension PropsReadableStreamController on ReadableStreamController {
  /// The desired size required to fill the stream's internal queue.
  external int get desiredSize;

  /// Closes the associated stream.
  external void close();

  /// Enqueues a given chunk in the associated stream.
  external void enqueue(Uint8List chunk);
}

/// {@template aws_common.js.readable_stream_default_controller}
/// A default [ReadableStreamController], for [ReadableStream]s which are not
/// byte streams.
/// {@endtemplate}
@JS()
@staticInterop
class ReadableStreamDefaultController extends ReadableStreamController {}

/// {@template aws_common.js.readable_byte_stream_controller}
/// A [ReadableStreamController] for [ReadableStream]s which are not
/// byte streams.
/// {@endtemplate}
@JS()
@staticInterop
class ReadableByteStreamController extends ReadableStreamController {}

/// {@template aws_common.js.readable_stream}
/// Represents a readable stream of byte data.
/// {@endtemplate}
@JS()
@staticInterop
class ReadableStream {
  /// {@macro aws_common.js.readable_stream}
  external factory ReadableStream([UnderlyingSource? underlyingSource]);
}

/// Used to expand [ReadableStream] and treat `ReadableStream.stream` as a
/// `late final` property so that multiple accesses return the same value.
final Expando<ReadableStreamView> _readableStreamViews =
    Expando('ReadableStreamViews');

/// {@macro aws_common.js.readable_stream}
extension PropsReadableStream on ReadableStream {
  /// Whether or not the readable stream is locked to a reader.
  external bool get locked;

  /// Returns a Promise that resolves when the stream is canceled.
  ///
  /// Calling this method signals a loss of interest in the stream by a
  /// consumer. The supplied reason argument will be given to the underlying
  /// source, which may or may not use it.
  Future<void> cancel([String? reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'cancel', [reason]));

  /// Creates a reader and locks the stream to it.
  ///
  /// While the stream is locked, no other reader can be acquired until this one
  /// is released.
  ReadableStreamReader getReader({
    ReadableStreamReaderMode mode = ReadableStreamReaderMode.default$,
  }) =>
      js_util.callMethod(this, 'getReader', [mode.jsValue]);

  /// Creates a Dart [Stream] from `this`.
  Stream<List<int>> get stream =>
      _readableStreamViews[this] ??= ReadableStreamView(this);

  /// The progress (in bytes) of [stream].
  Stream<int> get progress => (stream as ReadableStreamView).progress;
}

/// {@template aws_common.js.readable_stream_reader}
/// Interface for reading data from a [ReadableStream].
/// {@endtemplate}
@JS()
@staticInterop
abstract class ReadableStreamReader {}

/// {@macro aws_common.js.readable_stream_reader}
extension PropsReadableStreamReader on ReadableStreamReader {
  /// Returns a Promise that fulfills when the stream closes, or rejects if the
  /// stream throws an error or the reader's lock is released.
  ///
  /// This property enables you to write code that responds to an end to the
  /// streaming process.
  Future<void> get closed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'closed'));

  /// Returns a Promise that resolves when the stream is canceled.
  ///
  /// Calling this method signals a loss of interest in the stream by a
  /// consumer. The supplied reason argument will be given to the underlying
  /// source, which may or may not use it.
  Future<void> cancel([String? reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'cancel', [reason]));

  /// Releases the reader's lock on the stream.
  external void releaseLock();
}

/// {@template aws_common.js.readable_stream_byob_reader}
/// A reader for a [ReadableStream] that supports zero-copy reading from an
/// underlying byte source.
///
/// It is used for efficient copying from underlying sources where the data is
/// delivered as an "anonymous" sequence of bytes, such as files.
/// {@endtemplate}
@JS()
@staticInterop
class ReadableStreamBYOBReader extends ReadableStreamReader {}

/// {@template aws_common.js.readable_stream_default_reader}
/// A default reader that can be used to read stream data supplied from a
/// network (such as a fetch request).
/// {@endtemplate}
@JS()
@staticInterop
class ReadableStreamDefaultReader extends ReadableStreamReader {}

/// {@macro aws_common.js.readable_stream_default_reader}
extension PropsReadableStreamDefaultReader on ReadableStreamDefaultReader {
  /// Returns a promise providing access to the next chunk in the stream's
  /// internal queue.
  Future<ReadableStreamChunk> read() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'read', []));
}

/// Specifies the type of [ReadableStreamReader] to create.
enum ReadableStreamReaderMode with JSEnum {
  /// Results in a [ReadableStreamBYOBReader] being created that can read
  /// readable byte streams (i.e. can handle "bring your own buffer" reading).
  byob,

  /// Results in a [ReadableStreamDefaultReader] being created that can read
  /// individual chunks from a stream.
  default$
}

/// {@template aws_common.js.readable_stream_chunk}
/// A chunk in a [ReadableStream]'s internal queue, obtained using a
/// [ReadableStreamReader].
/// {@endtemplate}
@JS()
@staticInterop
@anonymous
abstract class ReadableStreamChunk {}

/// {@macro aws_common.js.readable_stream_chunk}
extension PropsReadableStreamChunk on ReadableStreamChunk {
  /// The chunk of data.
  ///
  /// Always `null` when [done] is `true`.
  external Uint8List? get value;

  /// Whether the stream is done producing values.
  external bool get done;
}

/// {@template aws_common.js.readable_stream_view}
/// Wraps a [ReadableStream] as a Dart [Stream].
/// {@endtemplate}
class ReadableStreamView extends StreamView<List<int>> {
  /// {@macro aws_common.js.readable_stream_view}
  factory ReadableStreamView(ReadableStream stream) {
    // False positives. These are closed in `_pipeFrom`.
    // ignore: close_sinks
    final controller = StreamController<List<int>>(sync: true);
    // ignore: close_sinks
    final progressController = StreamController<int>.broadcast(sync: true);
    _pipeFrom(stream, controller.sink, progressController.sink);
    return ReadableStreamView._(
      controller.stream,
      progressController.stream,
    );
  }

  const ReadableStreamView._(super.stream, this.progress);

  /// The number of bytes read so far.
  ///
  /// Closes when `this` closes.
  final Stream<int> progress;

  static Future<void> _pipeFrom(
    ReadableStream stream,
    StreamSink<List<int>> sink,
    StreamSink<int> progressSink,
  ) async {
    try {
      final reader = stream.getReader() as ReadableStreamDefaultReader;
      var bytesRead = 0;
      while (true) {
        final chunk = await reader.read();
        final value = chunk.value;
        if (chunk.done || value == null) {
          break;
        }
        bytesRead += value.length;
        sink.add(value);
        progressSink.add(bytesRead);
      }
    } on Object catch (e, st) {
      sink.addError(e, st);
    } finally {
      unawaited(sink.close());
      unawaited(progressSink.close());
    }
  }
}

/// {@template aws_common.js.stream_to_readable_stream}
/// Creates a [ReadableStream] from `this`.
/// {@endtemplate}
extension StreamToReadableStream on Stream<List<int>> {
  /// {@macro aws_common.js.stream_to_readable_stream}
  ReadableStream asReadableStream({
    void Function(Object, StackTrace)? onError,
  }) {
    final queue = StreamQueue(this);
    return ReadableStream(
      UnderlyingSource(
        pull: (controller) async {
          if (!await queue.hasNext) {
            await queue.cancel();
            controller.close();
            return;
          }
          try {
            final chunk = await queue.next;
            controller.enqueue(Uint8List.fromList(chunk));
          } on Object catch (e, st) {
            await queue.cancel();
            // Allow error to propogate before closing.
            scheduleMicrotask(controller.close);
            if (onError == null) {
              rethrow;
            }
            onError.call(e, st);
          }
        },
      ),
    );
  }
}

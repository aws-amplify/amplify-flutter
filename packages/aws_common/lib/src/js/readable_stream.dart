// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:aws_common/src/js/common.dart';
import 'package:web/web.dart';

/// {@template aws_common.js.readable_stream}
/// An object containing methods and properties that define how the constructed
/// [ReadableStream] will behave.
/// {@endtemplate}
extension type UnderlyingSource<T extends JSAny>._(JSObject _)
    implements JSObject {
  /// {@macro aws_common.js.readable_stream}
  factory UnderlyingSource({
    Future<void> Function(ReadableStreamDefaultController controller)? start,
    Future<void> Function(ReadableStreamDefaultController controller)? pull,
    Future<void> Function([JSString? reason])? cancel,
    ReadableStreamType type = ReadableStreamType.default$,
    int? autoAllocateChunkSize,
  }) {
    JSPromise<JSAny?> promiseStart(ReadableStreamDefaultController controller) {
      return start!.call(controller).toJS;
    }

    JSPromise<JSAny?> promisePull(ReadableStreamDefaultController controller) {
      return pull!.call(controller).toJS;
    }

    JSPromise<JSAny?> promiseCancel([JSString? reason]) {
      return cancel!.call(reason).toJS;
    }

    // Build the JS object manually using js_interop_unsafe to avoid
    // setting properties to `null`/`undefined` which dart2wasm may
    // serialize differently than dart2js. The browser's ReadableStream
    // constructor rejects `{type: null}` — the `type` property must
    // either be `"bytes"` or completely absent for default streams.
    final obj = JSObject();
    if (start != null) {
      obj['start'] = promiseStart.toJS;
    }
    if (pull != null) {
      obj['pull'] = promisePull.toJS;
    }
    if (cancel != null) {
      obj['cancel'] = promiseCancel.toJS;
    }
    final typeValue = type.jsValue;
    if (typeValue != null) {
      obj['type'] = typeValue.toJS;
    }
    if (autoAllocateChunkSize != null) {
      obj['autoAllocateChunkSize'] = autoAllocateChunkSize.toJS;
    }
    return obj as UnderlyingSource<T>;
  }

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
  external JSFunction? start;

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
  external JSFunction? pull;

  /// This method, also defined by the developer, will be called if the app
  /// signals that the stream is to be cancelled
  /// (e.g. if `ReadableStream.cancel` is called).
  ///
  /// The contents should do whatever is necessary to release access to the
  /// stream source. If this process is asynchronous, it can return a promise
  /// to signal success or failure. The reason parameter contains a
  /// `DOMString` describing why the stream was cancelled.
  external JSFunction? cancel;

  /// This property controls what type of readable stream is being dealt with.
  external JSString? type;

  /// For byte streams, the developer can set the autoAllocateChunkSize with
  /// a positive integer value to turn on the stream's auto-allocation
  /// feature.
  ///
  /// With this turned on, the stream implementation will automatically
  /// allocate an `ArrayBuffer` with a size of the given integer, and the
  /// consumer can also use a default reader.
  external JSNumber? autoAllocateChunkSize;
}

/// The type of [ReadableStream] and its associated [ReadableStreamDefaultController].
enum ReadableStreamType with JSEnum {
  /// Creates a [ReadableByteStreamController] capable of handling a BYOB
  /// (bring your own buffer)/byte stream.
  bytes,

  /// Creates a [ReadableStreamDefaultController].
  default$,
}

/// Used to expand [ReadableStream] and treat `ReadableStream.stream` as a
/// `late final` property so that multiple accesses return the same value.
final Expando<ReadableStreamView> _readableStreamViews = Expando(
  'ReadableStreamViews',
);

/// {@macro aws_common.js.readable_stream}
extension PropsReadableStream on ReadableStream {
  /// Creates a Dart [Stream] from `this`.
  ReadableStreamView get stream =>
      _readableStreamViews[this] ??= ReadableStreamView(this);

  /// The progress (in bytes) of [stream].
  Stream<int> get progress => stream.progress;
}

/// {@macro aws_common.js.readable_stream_reader}
extension PropsReadableStreamReader on ReadableStreamReader {
  /// Returns a Promise that fulfills when the stream closes, or rejects if the
  /// stream throws an error or the reader's lock is released.
  ///
  /// This property enables you to write code that responds to an end to the
  /// streaming process.
  Future<void> get closed => getProperty<JSPromise>('closed'.toJS).toDart;

  /// Returns a Promise that resolves when the stream is canceled.
  ///
  /// Calling this method signals a loss of interest in the stream by a
  /// consumer. The supplied reason argument will be given to the underlying
  /// source, which may or may not use it.
  Future<void> cancel([String? reason]) =>
      getProperty<JSPromise>('cancel'.toJS).toDart;

  /// Releases the reader's lock on the stream.
  external void releaseLock();
}

/// {@template aws_common.js.readable_stream_default_reader}
/// A default reader that can be used to read stream data supplied from a
/// network (such as a fetch request).
/// {@endtemplate}
extension type ReadableStreamDefaultReader._(JSObject _)
    implements ReadableStreamReader {
  /// Returns a promise providing access to the next chunk in the stream's
  /// internal queue.
  Future<ReadableStreamChunk> read() =>
      callMethod<JSPromise<ReadableStreamChunk>>('read'.toJS).toDart;
}

/// {@template aws_common.js.readable_stream_chunk}
/// A chunk in a [ReadableStream]'s internal queue, obtained using a
/// [ReadableStreamReader].
/// {@endtemplate}
extension type ReadableStreamChunk._(JSObject _) implements JSObject {
  /// The chunk of data.
  ///
  /// Always `null` when [done] is `true`.
  external JSUint8Array? get value;

  /// Whether the stream is done producing values.
  external bool get done;
}

/// {@template aws_common.js.readable_stream_view}
/// Wraps a [ReadableStream] as a Dart [Stream].
/// {@endtemplate}
final class ReadableStreamView extends StreamView<List<int>> {
  /// {@macro aws_common.js.readable_stream_view}
  factory ReadableStreamView(ReadableStream stream) {
    // False positives. These are closed in `_pipeFrom`.
    // ignore: close_sinks
    final controller = StreamController<List<int>>(sync: true);
    // ignore: close_sinks
    final progressController = StreamController<int>.broadcast(sync: true);
    _pipeFrom(stream, controller.sink, progressController.sink);
    return ReadableStreamView._(controller.stream, progressController.stream);
  }

  /// Creates an empty [ReadableStreamView] which emits a single `done` event.
  const ReadableStreamView.empty()
    : this._(const Stream.empty(), const Stream.empty());

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
        final jsValue = chunk.value;
        if (chunk.done || jsValue == null) {
          break;
        }
        final value = jsValue.toDart;
        bytesRead += value.length;
        sink.add(value);
        progressSink.add(bytesRead);
      }
    } on Object catch (e, st) {
      // Under dart2wasm, errors from ReadableStream's controller.error()
      // arrive as JSValue-wrapped objects instead of being automatically
      // unwrapped to Dart types (as dart2js does). Unwrap them so that
      // downstream Dart code sees the original error value.
      final error = _unwrapJSError(e);
      sink.addError(error, st);
    } finally {
      unawaited(sink.close());
      unawaited(progressSink.close());
    }
  }

  /// Attempts to unwrap a JS error value to its Dart equivalent.
  ///
  /// Under dart2wasm, errors that pass through JS boundaries (e.g. via
  /// `ReadableStream.controller.error()`) arrive as opaque `JSValue`
  /// wrappers. Under dart2js they are automatically converted to Dart
  /// types. This method normalizes the behavior.
  static Object _unwrapJSError(Object error) {
    if (error is JSAny) {
      // Try to convert the JSAny to a Dart string if it's a JSString.
      if (error.isA<JSString>()) {
        return (error as JSString).toDart;
      }
      // For other JS types, try dartify for common conversions.
      try {
        final dartified = error.dartify();
        if (dartified != null) return dartified;
      } on Object {
        // dartify may throw for unsupported types — fall through.
      }
    }
    return error;
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
    Future<void> pull(ReadableStreamDefaultController controller) async {
      if (!await queue.hasNext) {
        await queue.cancel();
        controller.close();
        return;
      }
      try {
        final chunk = await queue.next;
        controller.enqueue(Uint8List.fromList(chunk).toJS);
      } on Object catch (e, st) {
        await queue.cancel();
        // Allow error to propagate before closing.
        scheduleMicrotask(() {
          try {
            controller.close();
          } on Object {
            // ignore errors closing the controller
          }
        });
        if (onError == null) {
          controller.error(e.toString().toJS);
          rethrow;
        }
        onError.call(e, st);
      }
    }

    return ReadableStream(UnderlyingSource(pull: pull));
  }
}

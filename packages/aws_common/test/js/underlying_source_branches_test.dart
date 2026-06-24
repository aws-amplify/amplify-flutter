// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:aws_common/src/js/readable_stream.dart';
import 'package:test/test.dart';

/// Exercises every branch of the `UnderlyingSource` factory so the
/// property-by-property build path is fully verified under both dart2js and
/// dart2wasm. The existing readable_stream_test only covers `start` and
/// `pull` with a default `type`.
void main() {
  group('UnderlyingSource branch coverage', () {
    test('default type => no "type" key is set on the JS object', () {
      final source = UnderlyingSource<JSAny>(start: (_) async {});
      final obj = source as JSObject;
      // The whole point of the fix: default streams must NOT carry a `type`
      // property (neither null nor undefined-as-a-set-key).
      expect(obj.has('type'), isFalse, reason: 'default type must be absent');
      expect(obj.has('start'), isTrue);
      expect(obj.has('pull'), isFalse, reason: 'unset callbacks are omitted');
      expect(obj.has('cancel'), isFalse);
      expect(obj.has('autoAllocateChunkSize'), isFalse);
    });

    test('bytes type => "type" key is set to "bytes"', () {
      final source = UnderlyingSource<JSAny>(
        pull: (_) async {},
        type: ReadableStreamType.bytes,
        autoAllocateChunkSize: 1024,
      );
      final obj = source as JSObject;
      expect(obj.has('type'), isTrue);
      expect((obj['type'] as JSString).toDart, 'bytes');
      expect(obj.has('autoAllocateChunkSize'), isTrue);
      expect((obj['autoAllocateChunkSize'] as JSNumber).toDartInt, 1024);
      expect(obj.has('pull'), isTrue);
      expect(obj.has('start'), isFalse);
    });

    test('cancel branch sets a callable "cancel" function on the object', () {
      final source = UnderlyingSource<JSAny>(
        pull: (_) async {},
        cancel: ([JSString? reason]) async {},
      );
      final obj = source as JSObject;
      expect(obj.has('cancel'), isTrue);
      // The value must be a JS function (the wrapped Dart callback), not a
      // stray null/undefined.
      expect(obj['cancel'].isA<JSFunction>(), isTrue);
    });

    test('stream built from the factory pull branch produces data', () {
      // End-to-end exercise of the `pull`-only path the factory builds for
      // every web HTTP request body, confirming the manually-built object is
      // accepted by the browser's ReadableStream constructor.
      final readableStream = Stream.fromIterable([
        [1, 2, 3],
        [4, 5, 6],
      ]).asReadableStream();
      expect(
        readableStream.stream,
        emitsInOrder([
          orderedEquals([1, 2, 3]),
          orderedEquals([4, 5, 6]),
          emitsDone,
        ]),
      );
    });
  });
}

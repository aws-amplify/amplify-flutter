// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')

import 'dart:async';
import 'dart:typed_data';

import 'package:aws_common/src/js/readable_stream.dart';
import 'package:test/test.dart';

void main() {
  ReadableStream createReadableStream() {
    return ReadableStream(
      createUnderlyingSource(
        start: (controller) {
          controller
            ..enqueue(Uint8List.fromList([1, 2, 3, 4, 5]))
            ..enqueue(Uint8List.fromList([6, 7, 8, 9, 0]))
            ..close();
        },
      ),
    );
  }

  group('ReadableStreamWrapper', () {
    test('new', () {
      final readableStream = createReadableStream();
      expect(
        readableStream.stream,
        emitsInOrder([
          orderedEquals([1, 2, 3, 4, 5]),
          orderedEquals([6, 7, 8, 9, 0]),
          emitsDone,
        ]),
      );
    });

    test('progress', () {
      final readableStream = createReadableStream();
      expect(
        readableStream.progress,
        emitsInOrder([
          5,
          10,
          emitsDone,
        ]),
      );
    });

    group('asReadableStream (async)', () {
      test('', () {
        final stream = Stream.fromIterable([
          [1, 2, 3, 4, 5],
          [6, 7, 8, 9, 0]
        ]);
        final readableStream = stream.asReadableStream();
        expect(
          readableStream.stream,
          emitsInOrder([
            orderedEquals([1, 2, 3, 4, 5]),
            orderedEquals([6, 7, 8, 9, 0]),
            emitsDone,
          ]),
        );
        expect(
          readableStream.progress,
          emitsInOrder([
            5,
            10,
            emitsDone,
          ]),
        );
      });

      test('onError (caught)', () async {
        final controller = StreamController<List<int>>();
        addTearDown(controller.close);
        Object? error;
        final readableStream = controller.stream.asReadableStream(
          onError: expectAsync2((e, st) {
            error = e;
          }),
        );
        controller
          ..add([1, 2, 3, 4, 5])
          ..addError('failure')
          ..add([6, 7, 8, 9, 0]);
        expect(
          readableStream.progress,
          emitsInOrder([
            5,
            emitsDone,
          ]),
        );
        await expectLater(
          readableStream.stream,
          emitsInOrder([
            orderedEquals([1, 2, 3, 4, 5]),
            emitsDone,
          ]),
        );
        expect(error, 'failure');
      });

      test('onError (unhandled)', () {
        final controller = StreamController<List<int>>();
        addTearDown(controller.close);
        final readableStream = controller.stream.asReadableStream();
        controller
          ..add([1, 2, 3, 4, 5])
          ..addError('failure')
          ..add([6, 7, 8, 9, 0]);
        expect(
          readableStream.stream,
          emitsInOrder([
            orderedEquals([1, 2, 3, 4, 5]),
            emitsError('failure'),
            emitsDone,
          ]),
        );
        expect(
          readableStream.progress,
          emitsInOrder([
            5,
            emitsDone,
          ]),
        );
      });
    });

    group('asReadableStream (sync)', () {
      test('', () {
        final controller = StreamController<List<int>>(sync: true);
        final readableStream = controller.stream.asReadableStream();
        controller
          ..add([1, 2, 3, 4, 5])
          ..add([6, 7, 8, 9, 0])
          ..close();
        expect(
          readableStream.stream,
          emitsInOrder([
            orderedEquals([1, 2, 3, 4, 5]),
            orderedEquals([6, 7, 8, 9, 0]),
            emitsDone,
          ]),
        );
        expect(
          readableStream.progress,
          emitsInOrder([
            5,
            10,
            emitsDone,
          ]),
        );
      });

      test('onError (caught)', () async {
        final controller = StreamController<List<int>>(sync: true);
        addTearDown(controller.close);
        Object? error;
        final readableStream = controller.stream.asReadableStream(
          onError: expectAsync2((e, st) {
            error = e;
          }),
        );
        controller
          ..add([1, 2, 3, 4, 5])
          ..addError('failure')
          ..add([6, 7, 8, 9, 0]);
        expect(
          readableStream.progress,
          emitsInOrder([
            5,
            emitsDone,
          ]),
        );
        await expectLater(
          readableStream.stream,
          emitsInOrder([
            orderedEquals([1, 2, 3, 4, 5]),
            emitsDone,
          ]),
        );
        expect(error, 'failure');
      });

      test('onError (unhandled)', () {
        final controller = StreamController<List<int>>(sync: true);
        addTearDown(controller.close);
        final readableStream = controller.stream.asReadableStream();
        controller
          ..add([1, 2, 3, 4, 5])
          ..addError('failure')
          ..add([6, 7, 8, 9, 0]);
        expect(
          readableStream.stream,
          emitsInOrder([
            orderedEquals([1, 2, 3, 4, 5]),
            emitsError('failure'),
            emitsDone,
          ]),
        );
        expect(
          readableStream.progress,
          emitsInOrder([
            5,
            emitsDone,
          ]),
        );
      });
    });

    test('multiple streams can be expanded', () {
      final stream1 = createReadableStream();
      final stream2 = createReadableStream();

      expect(stream1.stream, stream1.stream);
      expect(stream2.stream, stream2.stream);
      expect(stream1.stream, isNot(stream2.stream));
    });
  });
}

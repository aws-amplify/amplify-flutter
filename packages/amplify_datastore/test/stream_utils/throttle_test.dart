// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/stream_utils/throttle.dart';

void main() {
  group('throttleByCountAndTime', () {
    test('should throttle by count if only count is provided', () {
      var stream = Stream.fromIterable(
        List.generate(10, (index) => index),
      );

      var throttledStream = stream.throttleByCountAndTime(
        throttleCount: 2,
      );

      expect(throttledStream, emitsInOrder([0, 2, 4, 6, 8]));
    });

    test('should not throttle if count is 1', () {
      var stream = Stream.fromIterable(
        List.generate(5, (index) => index),
      );

      var throttledStream = stream.throttleByCountAndTime(
        throttleCount: 1,
      );

      expect(throttledStream, emitsInOrder([0, 1, 2, 3, 4]));
    });

    test('should throttle by duration if only a duration is provided', () {
      fakeAsync((async) {
        var stream = Stream.periodic(
          Duration(milliseconds: 10),
          (int value) => value,
        ).take(10);

        var throttledStream = stream.throttleByCountAndTime(
          duration: Duration(milliseconds: 20),
        );

        expect(throttledStream, emitsInOrder([0, 2, 4, 6, 8]));
        async.elapse(Duration(milliseconds: 100));
      });
    });

    test('should emit the very first event immediately', () {
      fakeAsync((async) {
        var stream = Stream.periodic(
          Duration(milliseconds: 10),
          (int value) => value,
        ).take(1);

        var throttledStream = stream.throttleByCountAndTime(
          duration: Duration(milliseconds: 20),
          throttleCount: 10,
        );

        expect(throttledStream, emitsInOrder([0]));
        async.elapse(Duration(milliseconds: 15));
      });
    });

    test(
        'should emit each event from source if time between events exceeds duration',
        () {
      fakeAsync((async) {
        var stream = Stream.periodic(
          Duration(milliseconds: 10),
          (int value) => value,
        ).take(5);

        var throttledStream = stream.throttleByCountAndTime(
          duration: Duration(milliseconds: 5),
        );

        expect(throttledStream, emitsInOrder([0, 1, 2, 3, 4]));
        async.elapse(Duration(milliseconds: 50));
      });
    });

    test('should throttle by duration if duration is reached before count', () {
      fakeAsync((async) {
        var stream = Stream.periodic(
          Duration(milliseconds: 10),
          (int value) => value,
        ).take(10);

        var throttledStream = stream.throttleByCountAndTime(
          throttleCount: 1000,
          duration: Duration(milliseconds: 20),
        );

        expect(throttledStream, emitsInOrder([0, 2, 4, 6, 8]));
        async.elapse(Duration(milliseconds: 100));
      });
    });

    test('should throttle by count if count is reached before duration', () {
      fakeAsync((async) {
        var stream = Stream.periodic(
          Duration(milliseconds: 1),
          (int value) => value,
        ).take(1000);

        var throttledStream = stream.throttleByCountAndTime(
          throttleCount: 10,
          duration: Duration(seconds: 10),
        );

        expect(throttledStream, emitsInOrder([0, 10, 20, 30, 40, 50]));
        async.elapse(Duration(seconds: 10));
      });
    });

    test('should not throttle if the throttleIf condition is false', () {
      fakeAsync((async) {
        var stream = Stream.periodic(
          Duration(milliseconds: 1),
          (int value) => value,
        ).take(1000);

        var throttledStream = stream.throttleByCountAndTime(
          throttleCount: 5,
          duration: Duration(seconds: 10),
          throttleIf: (int value) => value > 5 && value <= 20,
        );

        expect(throttledStream,
            emitsInOrder([0, 1, 2, 3, 4, 5, 10, 15, 20, 21, 22, 23]));
        async.elapse(Duration(seconds: 10));
      });
    });

    group('source stream types', () {
      late StreamController controller;
      late StreamController broadcastController;
      late List<StreamController> controllers;

      setUp(() {
        controller = StreamController(sync: true);
        broadcastController = StreamController.broadcast(sync: true);
        controllers = [controller, broadcastController];
      });

      test('the source stream can be cancelled', () async {
        for (var controller in controllers) {
          var streamWasCanceled = false;
          controller.onCancel = () {
            streamWasCanceled = true;
          };
          var stream = controller.stream.throttleByCountAndTime(
            throttleCount: 10,
            duration: Duration(milliseconds: 10),
          );
          var subscription = stream.listen((event) {});
          await subscription.cancel();
          expect(streamWasCanceled, true);
        }
      });

      test('closes output and invokes onDone', () async {
        for (var controller in controllers) {
          var isDone = false;
          var stream = controller.stream.throttleByCountAndTime(
            throttleCount: 10,
          );
          stream.listen((_) => {}, onDone: () {
            isDone = true;
          });
          controller.sink.add(1);
          controller.sink.add(2);
          await controller.close();
          expect(isDone, true);
        }
      });

      test('multiple listeners all get values if the source is a broadcast',
          () {
        var values = [];
        var values2 = [];
        var stream = broadcastController.stream.throttleByCountAndTime(
          throttleCount: 1,
        );
        stream.listen(values.add);
        stream.listen(values2.add);
        broadcastController
          ..add(1)
          ..add(2);
        expect(values, [1, 2]);
        expect(values2, [1, 2]);
      });
    });
  });
}

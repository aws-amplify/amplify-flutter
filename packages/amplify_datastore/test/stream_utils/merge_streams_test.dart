/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:flutter_test/flutter_test.dart';
import 'package:fake_async/fake_async.dart';

import '../../lib/stream_utils/merge_streams.dart';

void main() {
  group('mergeStreams', () {
    test('should merge events from multiple streams', () {
      fakeAsync((async) {
        var stream1 = Stream.periodic(
          Duration(milliseconds: 3),
          (int value) => 'stream 1 event at ${(value + 1) * 3} ms',
        );

        var stream2 = Stream.periodic(
          Duration(milliseconds: 5),
          (int value) => 'stream 2 event at ${(value + 1) * 5} ms',
        );

        var mergedStream = mergeStreams([stream1, stream2]);

        expect(
          mergedStream,
          emitsInOrder(
            [
              'stream 1 event at 3 ms',
              'stream 2 event at 5 ms',
              'stream 1 event at 6 ms',
              'stream 1 event at 9 ms',
              'stream 2 event at 10 ms',
              'stream 1 event at 12 ms',
              'stream 1 event at 15 ms',
              'stream 2 event at 15 ms',
            ],
          ),
        );
        async.elapse(Duration(milliseconds: 15));
      });
    });

    test('should emit done if all source streams emit done', () {
      var stream1 = Stream.fromIterable([1, 2]);
      var stream2 = Stream.fromIterable([1]);
      var mergedStream = mergeStreams([stream1, stream2]);
      expect(mergedStream, emitsInOrder([1, 1, 2, emitsDone]));
    });

    test('should emit errors from source streams', () {
      var stream1 = Stream.fromIterable([1]);
      var stream2 = Stream.error('error');
      var mergedStream = mergeStreams([stream1, stream2]);
      expect(mergedStream, emitsInOrder([1, emitsError('error')]));
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../http_common.dart';
import 'request_body_streamed_server_vm.dart'
    if (dart.library.js) 'request_body_streamed_server_web.dart';

/// Tests that the [AWSHttpClient] correctly implements streamed request body
/// uploading.
void main() {
  clientTest('stream requests', startServer,
      skip: zIsWeb
          ? 'Web does not support streamed requests for HTTP/1.1'
          : null, (client, httpServerQueue, httpServerChannel, createUri) {
    Stream<String> count({int? until}) async* {
      var i = 0;
      while (true) {
        if (until != null && i > until) {
          break;
        }
        yield '${i++}\n';
        // Let the event loop run.
        await Future<void>.delayed(Duration.zero);
      }
    }

    test('client.send() with StreamedRequest', () async {
      // The client continuously streams data to the server until
      // instructed to stop (by setting `clientWriting` to `false`).
      // The server sets `serverWriting` to `false` after it has
      // already received some data.
      //
      // This ensures that the client supports streamed data sends.
      final lastReceived = StreamSplitter(httpServerQueue().rest.cast<int>());

      final body = StreamController<List<int>>();
      final request = AWSStreamedHttpRequest.post(
        createUri(''),
        body: body.stream,
      );
      const Utf8Encoder()
          .bind(count())
          .takeUntil(lastReceived.split().firstWhere((el) => el >= 1000))
          .listen(body.sink.add, onDone: body.sink.close);
      await client().send(request).response;

      await expectLater(
        lastReceived.split(),
        emits(greaterThanOrEqualTo(1000)),
      );
      unawaited(body.close());
    });

    test('can leave content-type unspecified', () async {
      final request = AWSStreamedHttpRequest(
        method: AWSHttpMethod.get,
        uri: createUri(''),
        body: count(until: 1000).transform(const Utf8Encoder()),
        headers: {
          'content-type': 'text/plain',
        },
      );
      expect(client().send(request).response, completes);
    });
  });
}

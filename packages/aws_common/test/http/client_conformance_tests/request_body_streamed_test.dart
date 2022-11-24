// Original:
// Copyright (c) 2022, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Modifications:
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

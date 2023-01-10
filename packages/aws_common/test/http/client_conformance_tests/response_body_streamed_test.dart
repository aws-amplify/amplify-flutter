// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

import '../http_common.dart';
import 'response_body_streamed_server_vm.dart'
    if (dart.library.js) 'response_body_streamed_server_web.dart';

/// Tests that the [AWSHttpClient] correctly implements HTTP responses with
/// bodies of unbounded size.
void main() {
  clientTest('streamed response body', startServer,
      (client, httpServerQueue, httpServerChannel, createUri) {
    test('large response streamed without content length', () async {
      // The server continuously streams data to the client until
      // instructed to stop.
      //
      // This ensures that the client supports streamed responses.
      final request = AWSHttpRequest.get(createUri(''));
      final response = await client().send(request).response;
      var lastReceived = 0;
      await const LineSplitter()
          .bind(const Utf8Decoder().bind(response.body))
          .forEach((s) {
        lastReceived = int.parse(s.trim());
        if (lastReceived == 1000) {
          httpServerChannel().sink.add(true);
        }
      });
      expect(response.headers[AWSHeaders.contentType], 'text/plain');
      expect(lastReceived, greaterThanOrEqualTo(1000));
    });
  });
}

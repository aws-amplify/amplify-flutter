// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

import '../http_common.dart';
import 'response_body_server_vm.dart'
    if (dart.library.js) 'response_body_server_web.dart';

/// Tests that the [AWSHttpClient] correctly implements HTTP responses with
/// bodies.
void main() {
  clientTest('response body', startServer,
      (client, httpServerQueue, httpServerChannel, createUri) {
    const message = 'Hello World!';

    test('response with content length', () async {
      final request = AWSHttpRequest.get(createUri(''));
      final response = await client().send(request).response;
      expect(await response.decodeBody(), message);
      expect(response.headers[AWSHeaders.contentLength], '${message.length}');
      expect(response.headers[AWSHeaders.contentType], 'text/plain');
    });
  });
}

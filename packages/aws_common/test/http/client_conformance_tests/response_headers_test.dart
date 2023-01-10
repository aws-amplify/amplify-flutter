// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

import '../http_common.dart';
import 'response_headers_server_vm.dart'
    if (dart.library.js) 'response_headers_server_web.dart';

/// Tests that the [AWSHttpClient] correctly processes response headers.
void main() {
  clientTest('server headers', startServer,
      (client, httpServerQueue, httpServerChannel, createUri) {
    test('single header', () async {
      final request = AWSHttpRequest.get(
        createUri(''),
        headers: const {'foo': 'bar'},
      );
      final response = await client().send(request).response;
      expect(response.headers['foo'], 'bar');
    });

    test('UPPERCASE header', () async {
      final request = AWSHttpRequest.get(
        createUri(''),
        headers: const {'foo': 'BAR'},
      );
      final response = await client().send(request).response;
      // RFC 2616 14.44 states that header field names are case-insensive.
      // http.Client canonicalizes field names into lower case.
      expect(response.headers['foo'], 'BAR');
    });

    test('multiple headers', () async {
      final request = AWSHttpRequest.get(
        createUri(''),
        headers: const {
          'field1': 'value1',
          'field2': 'value2',
          'field3': 'value3'
        },
      );
      final response = await client().send(request).response;
      expect(response.headers['field1'], 'value1');
      expect(response.headers['field2'], 'value2');
      expect(response.headers['field3'], 'value3');
    });

    test('multiple values per header', () async {
      final request = AWSHttpRequest.get(
        createUri(''),
        headers: const {'list': 'apple, orange, banana'},
      );
      final response = await client().send(request).response;
      expect(response.headers['list'], 'apple, orange, banana');
    });
  });
}

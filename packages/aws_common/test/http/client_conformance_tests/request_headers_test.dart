// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

import '../http_common.dart';
import 'request_headers_server_vm.dart'
    if (dart.library.js) 'request_headers_server_web.dart';

/// Tests that the [AWSHttpClient] correctly sends headers in the request.
void main() {
  clientTest('client headers', startServer,
      (client, httpServerQueue, httpServerChannel, createUri) {
    test('single header', () async {
      final request = AWSHttpRequest.get(
        createUri(''),
        headers: const {'foo': 'bar'},
      );
      await client().send(request).response;

      final headers = await httpServerQueue().next as Map;
      expect(headers['foo'], 'bar');
    });

    test('UPPER case header', () async {
      final request = AWSHttpRequest.get(
        createUri(''),
        headers: const {'FOO': 'BAR'},
      );
      await client().send(request).response;

      final headers = await httpServerQueue().next as Map;
      // RFC 2616 14.44 states that header field names are case-insensitive.
      // http.Client canonicalizes field names into lower case.
      expect(headers['foo'], 'BAR');
    });

    test('test headers different only in case', () async {
      final request = AWSHttpRequest.get(
        createUri(''),
        headers: const {'foo': 'bar', 'Foo': 'Bar'},
      );
      await client().send(request).response;

      final headers = await httpServerQueue().next as Map;
      expect(headers['foo'], isIn(['bar', 'Bar']));
    });

    test('multiple headers', () async {
      // The `http.Client` API does not offer a way of sending the name field
      // more than once.
      final request = AWSHttpRequest.get(
        createUri(''),
        headers: const {'fruit': 'apple', 'color': 'red'},
      );
      await client().send(request).response;

      final headers = await httpServerQueue().next as Map;
      expect(headers['fruit'], 'apple');
      expect(headers['color'], 'red');
    });

    test('multiple values per header', () async {
      // The `http.Client` API does not offer a way of sending the same field
      // more than once.
      final request = AWSHttpRequest.get(
        createUri(''),
        headers: const {'list': 'apple, orange'},
      );
      await client().send(request).response;

      final headers = await httpServerQueue().next as Map;
      expect(headers['list'], 'apple, orange');
    });
  });
}

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

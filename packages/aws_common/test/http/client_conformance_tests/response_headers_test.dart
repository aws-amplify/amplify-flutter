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

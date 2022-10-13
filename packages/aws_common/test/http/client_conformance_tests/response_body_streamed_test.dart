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

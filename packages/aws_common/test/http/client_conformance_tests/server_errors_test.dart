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
import 'server_errors_server_vm.dart'
    if (dart.library.js) 'server_errors_server_web.dart';

/// Tests that the [AWSHttpClient] correctly handles server errors.
void main() {
  clientTest('server errors', startServer,
      (client, httpServerQueue, httpServerChannel, createUri) {
    test('no such host', () async {
      expect(
        client()
            .send(AWSHttpRequest.get(Uri.http('thisisnotahost', '')))
            .response,
        throwsA(
          isA<AWSHttpException>().having(
            (e) => e.uri,
            'uri',
            Uri.http('thisisnotahost', ''),
          ),
        ),
      );
    });

    test('no such host (secure)', () async {
      expect(
        client()
            .send(AWSHttpRequest.get(Uri.https('thisisnotahost', '')))
            .response,
        throwsA(
          isA<AWSHttpException>().having(
            (e) => e.uri,
            'uri',
            Uri.https('thisisnotahost', ''),
          ),
        ),
      );
    });

    test('disconnect', () async {
      expect(
        client().send(AWSHttpRequest.get(createUri(''))).response,
        throwsA(
          isA<AWSHttpException>().having(
            (e) => e.uri,
            'uri',
            createUri(''),
          ),
        ),
      );
    });
  });
}

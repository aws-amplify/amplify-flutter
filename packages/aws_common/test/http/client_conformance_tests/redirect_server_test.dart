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
import 'redirect_server_vm.dart'
    if (dart.library.js) 'redirect_server_web.dart';

/// Tests that the [AWSHttpClient] correctly implements HTTP redirect logic.
void main() {
  clientTest('redirects', startServer,
      (client, httpServerQueue, httpServerChannel, createUri) {
    test('disallow redirect', () async {
      final request = AWSHttpRequest.get(
        createUri('/1'),
        followRedirects: false,
      );
      final response = await client().send(request).response;
      expect(response.statusCode, zIsWeb ? 0 : 302);
    });

    test('allow redirect', () async {
      final request = AWSHttpRequest.get(
        createUri('/1'),
        followRedirects: true,
      );
      final response = await client().send(request).response;
      expect(response.statusCode, 200);
    });

    test(
      'allow redirect, 0 maxRedirects, ',
      () async {
        final request = AWSHttpRequest.get(
          createUri('/1'),
          followRedirects: true,
          maxRedirects: 0,
        );
        expect(
          client().send(request).response,
          throwsA(
            isA<AWSHttpException>().having(
              (e) => e.toString(),
              'message',
              contains(
                zIsWeb
                    ?
                    // Only cross-browser similarity
                    'Error'
                    : 'Redirect limit exceeded',
              ),
            ),
          ),
        );
      },
      skip: !zIsWeb
          ? 'Re-enable after https://github.com/dart-lang/sdk/issues/49012 '
              'is fixed'
          : null,
    );

    test(
      'exactly the right number of allowed redirects',
      () async {
        final request = AWSHttpRequest.get(
          createUri('/5'),
          followRedirects: true,
          maxRedirects: 5,
        );
        final response = await client().send(request).response;
        expect(response.statusCode, 200);
      },
    );

    test(
      'too many redirects',
      () async {
        final request = AWSHttpRequest.get(
          createUri('/6'),
          followRedirects: true,
          maxRedirects: 5,
        );
        expect(
          client().send(request).response,
          throwsA(
            isA<AWSHttpException>().having(
              (e) => e.toString(),
              'message',
              contains('Redirect limit exceeded'),
            ),
          ),
        );
      },
      skip: zIsWeb ? 'No support for maxRedirects' : null,
    );

    test(
      'loop',
      () async {
        final request = AWSHttpRequest.get(
          createUri('/loop'),
          followRedirects: true,
        );
        expect(
          client().send(request).response,
          throwsA(isA<AWSHttpException>()),
        );
      },
    );
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

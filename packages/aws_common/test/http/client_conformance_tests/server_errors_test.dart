// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

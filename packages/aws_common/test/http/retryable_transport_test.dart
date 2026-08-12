// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

void main() {
  group('AWSHttpClient transport failures', () {
    test('flags a failed connection as a retryable AWSHttpException', () async {
      // Bind then release a port so the connection is guaranteed to fail.
      final socket = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
      final port = socket.port;
      await socket.close();

      final client = AWSHttpClient();
      addTearDown(client.close);
      final request = AWSHttpRequest.get(Uri.parse('http://127.0.0.1:$port/'));
      await expectLater(
        client.send(request).response,
        throwsA(
          isA<AWSHttpException>().having(
            (e) => e.retryable,
            'retryable',
            isTrue,
          ),
        ),
      );
    });
  });
}

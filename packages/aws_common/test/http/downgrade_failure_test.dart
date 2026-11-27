// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

import 'http_common.dart';

void main() {
  group('AWSHttpClient', () {
    test('completes the response with an error when the connection fails '
        'after downgrading to HTTP/1.1', () async {
      final context = SecurityContext()
        ..useCertificateChain('test/http/certificates/cert.pem')
        ..usePrivateKey('test/http/certificates/key.pem', password: 'amazon')
        ..setAlpnProtocols([AlpnProtocol.http1_1.value], true);
      final server = await SecureServerSocket.bind(
        InternetAddress.loopbackIPv4,
        0,
        context,
      );
      addTearDown(server.close);

      // Drop the connection on the first request bytes, before any response
      // headers are sent.
      server.listen((socket) {
        socket.listen((_) => socket.destroy(), onError: (Object _) {});
      });

      final client = debugClient
        ..supportedProtocols = SupportedProtocols.http1_2_3;
      final request = AWSHttpRequest.get(
        Uri.https('localhost:${server.port}', '/'),
      );

      await expectLater(
        client.send(request).response,
        throwsA(isA<AWSHttpException>()),
      );
    });
  });
}

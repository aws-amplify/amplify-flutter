// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:async';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/http/aws_http_client_io.dart'
    show isRetryableTransportError;
import 'package:http2/http2.dart';
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

  group('isRetryableTransportError', () {
    test('SocketException (connection never reached the server) is '
        'retryable', () {
      expect(isRetryableTransportError(const SocketException('reset')), isTrue);
      expect(
        isRetryableTransportError(const SocketException('Failed host lookup')),
        isTrue,
      );
    });

    test('broader transport errors are NOT retryable (may have reached the '
        'server => duplicate risk)', () {
      expect(isRetryableTransportError(const HttpException('closed')), isFalse);
      expect(isRetryableTransportError(TimeoutException('timed out')), isFalse);
      expect(isRetryableTransportError(TransportException('h2')), isFalse);
      expect(
        isRetryableTransportError(StreamTransportException('h2 stream')),
        isFalse,
      );
    });

    test('non-transport failures are not retryable', () {
      expect(isRetryableTransportError(const FormatException('bad')), isFalse);
      expect(isRetryableTransportError(StateError('bad')), isFalse);
      expect(isRetryableTransportError(ArgumentError('bad')), isFalse);
    });
  });
}

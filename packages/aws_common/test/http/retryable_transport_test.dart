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

    test('flags a terminated TLS handshake as a retryable '
        'AWSHttpException', () async {
      // Close the connection cleanly mid-handshake, reproducing the Windows CI
      // failure "HandshakeException: Connection terminated during handshake".
      final server = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
      addTearDown(server.close);
      server.listen((socket) {
        socket
          ..listen(null, onError: (_) {}, cancelOnError: true)
          ..close();
      });

      final client = AWSHttpClient();
      addTearDown(client.close);
      final request = AWSHttpRequest.get(
        Uri.parse('https://127.0.0.1:${server.port}/'),
      );
      await expectLater(
        client.send(request).response,
        throwsA(
          isA<AWSHttpException>()
              .having((e) => e.retryable, 'retryable', isTrue)
              .having(
                (e) => e.underlyingException,
                'underlyingException',
                isA<HandshakeException>(),
              ),
        ),
      );
    });
  });

  group('isRetryableTransportError', () {
    test('SocketException (refused, reset or DNS failure) is retryable', () {
      expect(isRetryableTransportError(const SocketException('reset')), isTrue);
      expect(
        isRetryableTransportError(const SocketException('Failed host lookup')),
        isTrue,
      );
    });

    test('HandshakeException (TLS never completed, so the request was never '
        'sent) is retryable', () {
      expect(
        isRetryableTransportError(
          const HandshakeException('Connection terminated during handshake'),
        ),
        isTrue,
      );
    });

    test('CertificateException is NOT retryable (an untrusted certificate is '
        'not transient)', () {
      expect(
        isRetryableTransportError(const CertificateException('bad cert')),
        isFalse,
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

  group('AWSHttpException.retryable', () {
    final request = AWSHttpRequest.get(Uri.parse('https://example.com'));

    test('flags a raw transport error as retryable', () {
      final e = AWSHttpException.retryable(request, const SocketException('x'));
      expect(e.retryable, isTrue);
    });

    test('never downgrades: wrapping a non-retryable AWSHttpException still '
        'yields a retryable result', () {
      final nonRetryable = AWSHttpException(request);
      expect(nonRetryable.retryable, isFalse);
      final e = AWSHttpException.retryable(request, nonRetryable);
      expect(e.retryable, isTrue);
    });
  });
}

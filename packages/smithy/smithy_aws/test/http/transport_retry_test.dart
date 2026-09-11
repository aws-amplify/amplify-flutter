// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:async';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:test/test.dart';

import 'dummy_operation.dart';

class _LocalHttpOperation extends DummyHttpOperation {
  _LocalHttpOperation(super.retryer, this.baseUri);

  @override
  final Uri baseUri;
}

void main() {
  group('AWSRetryer', () {
    test('retries a terminated TLS handshake', () async {
      // Replies to the TLS ClientHello with non-TLS bytes, so the handshake
      // fails in the TLS layer rather than depending on how the OS reports EOF.
      final server = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
      addTearDown(server.close);
      server.listen((socket) {
        socket
          ..listen(null, onError: (_) {}, cancelOnError: true)
          ..add(List<int>.filled(64, 0x41))
          ..close();
      });

      final httpClient = AWSHttpClient();
      addTearDown(() => httpClient.close(force: true));

      // exponentialBase: 0 => zero backoff, so the test is fast.
      final op = _LocalHttpOperation(
        AWSRetryer(exponentialBase: 0),
        Uri.parse('https://127.0.0.1:${server.port}'),
      );
      await runZoned(() async {
        await expectLater(
          op.run(const Unit(), client: httpClient).result,
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
      }, zoneValues: {AWSConfigValue.maxAttempts: 3});
      expect(op.debugNumRetries, 2, reason: 'should retry until exhausted');
    });
  });
}

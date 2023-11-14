// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

final expiredCertUrl = Uri.parse('https://expired.badssl.com/');

void main() {
  group('AWSHttpClient', () {
    test('throws by default for expired certificates', () async {
      final client = AWSHttpClient();
      final request = AWSHttpRequest.get(expiredCertUrl);
      final operation = client.send(request);
      await expectLater(
        operation.response,
        throwsA(isA<AWSHttpException>()),
      );
    });

    test(
      'does not throw when onBadCertificate is overridden',
      () async {
        final client = AWSHttpClient()
          ..onBadCertificate = (p0, host, port) => true;
        final request = AWSHttpRequest.get(expiredCertUrl);
        final operation = client.send(request);
        expect(
          operation.response,
          completes,
        );
      },
      // onBadCertificate override is only used on vm
      skip: zIsWeb,
    );
  });
}

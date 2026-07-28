// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:test/test.dart';

/// Smoke test: proves the `smithy_aws` runtime compiles and runs under
/// dart2wasm in a browser. `smithy_aws` has no web-specific branch of its own,
/// so this exercises its core runtime types — the retry policy, endpoint, and
/// credential-scope serialization — which run on web underneath every AWS
/// service client.
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
    });

    test('AWSRetryer can be constructed with its defaults', () {
      final retryer = AWSRetryer();
      expect(retryer.initialRetryTokens, greaterThan(0));
      expect(retryer.maxBackoffTime, isA<Duration>());
    });

    test('CredentialScope round-trips through JSON', () {
      const scope = CredentialScope(region: 'us-east-1', service: 's3');
      final decoded = CredentialScope.fromJson(scope.toJson());
      expect(decoded.region, 'us-east-1');
      expect(decoded.service, 's3');
    });

    test('AWSEndpoint holds its endpoint and credential scope', () {
      final endpoint = AWSEndpoint(
        endpoint: Endpoint(uri: Uri.https('s3.us-east-1.amazonaws.com')),
        credentialScope: const CredentialScope(
          region: 'us-east-1',
          service: 's3',
        ),
      );
      expect(endpoint.endpoint.uri.host, 's3.us-east-1.amazonaws.com');
      expect(endpoint.credentialScope?.region, 'us-east-1');
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  group('Signer', () {
    const signer = AWSSigV4Signer(
      credentialsProvider: AWSCredentialsProvider(dummyCredentials),
    );

    group('Headers', () {
      final request = AWSHttpRequest.post(
        Uri.https('example.com', '/'),
        body: utf8.encode('hello'),
        headers: const {
          AWSHeaders.contentLength: '5',
        },
      );
      final signedRequest = signer.signSync(
        request,
        credentialScope: dummyCredentialScope,
      );
      final signedHeaders = CaseInsensitiveMap(
        signedRequest.canonicalRequest.canonicalHeaders,
      );
      final sentHeaders = signedRequest.headers;

      test(testOn: 'browser', 'Host, Content-Length unset by signer', () {
        expect(
          signedHeaders,
          contains(AWSHeaders.host),
        );
        expect(
          signedHeaders,
          contains(AWSHeaders.contentLength),
        );
        expect(
          sentHeaders,
          isNot(contains(AWSHeaders.host)),
        );
        expect(
          sentHeaders,
          isNot(contains(AWSHeaders.contentLength)),
        );
      });

      test(testOn: 'browser', 'X-Amz-User-Agent header is included', () {
        expect(
          sentHeaders,
          containsPair(AWSHeaders.amzUserAgent, contains('aws-sigv4-dart')),
        );
        expect(
          sentHeaders,
          isNot(contains(AWSHeaders.userAgent)),
        );
        expect(
          signedHeaders,
          contains(AWSHeaders.amzUserAgent),
        );
        expect(
          signedHeaders,
          isNot(contains(AWSHeaders.userAgent)),
        );
      });

      test(testOn: 'vm', 'Host, Content-Length, User-Agent set by signer', () {
        expect(
          signedHeaders,
          contains(AWSHeaders.host),
        );
        expect(
          signedHeaders,
          contains(AWSHeaders.contentLength),
        );
        expect(
          sentHeaders,
          contains(AWSHeaders.host),
        );
        expect(
          sentHeaders,
          contains(AWSHeaders.contentLength),
        );
      });

      test(testOn: 'vm', 'User-Agent header is included', () {
        expect(
          sentHeaders,
          isNot(contains(AWSHeaders.amzUserAgent)),
        );
        expect(
          sentHeaders,
          containsPair(AWSHeaders.userAgent, contains('aws-sigv4-dart')),
        );
        expect(
          signedHeaders,
          isNot(contains(AWSHeaders.amzUserAgent)),
        );
        expect(
          signedHeaders,
          isNot(contains(AWSHeaders.userAgent)),
          reason: 'User-Agent header is never signed',
        );
      });
    });

    group('URI handling', () {
      test('allows all properties', () {
        // NOTE: `userInfo` and `fragment` are explicitly disallowed since they
        // do not show up in AWS requests and are not part of the sigv4
        // protocol.
        const scheme = 'scheme';
        const host = 'host';
        const port = 1234;
        const path = '/path';
        const query = 'key=value';

        final uri = Uri(
          scheme: scheme,
          host: host,
          port: port,
          path: path,
          query: query,
        );

        final request = AWSHttpRequest.get(uri);
        final signedRequest = signer.signSync(
          request,
          credentialScope: dummyCredentialScope,
        );

        expect(signedRequest.scheme, scheme);
        expect(signedRequest.uri.scheme, scheme);
        expect(signedRequest.host, host);
        expect(signedRequest.uri.host, host);
        expect(signedRequest.port, port);
        expect(signedRequest.uri.port, port);
        expect(signedRequest.path, path);
        expect(signedRequest.uri.path, path);
        expect(signedRequest.queryParameters, equals({'key': 'value'}));
        expect(signedRequest.uri.queryParameters, equals({'key': 'value'}));
      });
    });
  });
}

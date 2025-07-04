// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:convert';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/testing.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

import 'util.dart';

const chunkedRequest = 'test/s3/testdata/chunked_request.txt';

void main() {
  group('S3', () {
    test('E2E Test', () async {
      final context = buildContext();
      final testBody = File.fromUri(
        Directory.current.uri.resolve(chunkedRequest),
      ).openRead();
      final creds = AWSCredentialsProvider(context.credentials);

      final signer = AWSSigV4Signer(credentialsProvider: creds);
      final signedReq = await signer.sign(
        AWSStreamedHttpRequest.raw(
          method: AWSHttpMethod.put,
          host: 's3.amazonaws.com',
          path: '/examplebucket/chunkObject.txt',
          body: testBody,
        ),
        credentialScope: AWSCredentialScope.raw(
          region: context.region,
          service: context.service,
        ),
      );

      final client = MockAWSHttpClient((req, _) async {
        await Future<void>.delayed(const Duration(milliseconds: 500));
        return AWSStreamedHttpResponse(
          statusCode: 200,
          body: HttpPayload.string('OK'),
        );
      });
      final resp = await signedReq.send(client: client).response;

      expect(resp.statusCode, equals(200));
      expect(await utf8.decodeStream(resp.body), equals('OK'));
    });
  });
}

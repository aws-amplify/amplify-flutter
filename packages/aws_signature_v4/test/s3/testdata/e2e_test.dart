// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

@TestOn('vm')

import 'dart:convert';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
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
        credentialScope: AWSCredentialScope(
          region: context.region,
          service: context.service,
        ),
      );

      final client = MockClient((req) async {
        await Future<void>.delayed(const Duration(milliseconds: 500));
        return Response('OK', 200);
      });
      final resp = await signedReq.send(client);

      expect(resp.statusCode, equals(200));
      expect(await utf8.decodeStream(resp.body), equals('OK'));
    });
  });
}

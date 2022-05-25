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

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  final uri = Uri.parse('https://example.com');

  group('AWSStreamedHttpRequest', () {
    const signer = AWSSigV4Signer(
      credentialsProvider: AWSCredentialsProvider(dummyCredentials),
    );
    final mockClient = MockHttpClient();
    Stream<List<int>> makeBody() => Stream.fromIterable([
          [0],
          [1],
          [2]
        ]);

    group('base service configuration', () {
      test('| body is split twice with contentLength given', () async {
        final request = AWSStreamedHttpRequest(
          method: AWSHttpMethod.post,
          uri: uri,
          body: makeBody(),
          contentLength: 3,
        );
        final signedRequest = await signer.sign(
          request,
          credentialScope: AWSCredentialScope.raw(
            region: 'us-west-2',
            service: 'service',
          ),
        );
        await signedRequest.send(mockClient);

        // Body is split twice, once to hash the payload, then again to read the
        // body which cannot be read from the original body stream.
        expect(request.debugNumSplits, equals(2));
      });

      test('| body is split thrice without contentLength given', () async {
        final request = AWSStreamedHttpRequest(
          method: AWSHttpMethod.post,
          uri: uri,
          body: makeBody(),
        );
        final signedRequest = await signer.sign(
          request,
          credentialScope: AWSCredentialScope.raw(
            region: 'us-west-2',
            service: 'service',
          ),
        );
        await signedRequest.send(mockClient);

        // Body is split thrice, once to hash the payload, once to get the
        // content length, then again to read the body which cannot be read from
        // the original body stream.
        expect(request.debugNumSplits, equals(3));
      });
    });

    group('s3 service configuration', () {
      final serviceConfiguration = S3ServiceConfiguration(chunked: true);

      test('| body is not split when contentLength is given', () async {
        final request = AWSStreamedHttpRequest(
          method: AWSHttpMethod.post,
          uri: uri,
          body: makeBody(),
          contentLength: 3,
        );
        final signedRequest = await signer.sign(
          request,
          credentialScope: AWSCredentialScope.raw(
            region: 'us-west-2',
            service: 'service',
          ),
          serviceConfiguration: serviceConfiguration,
        );
        await signedRequest.send(mockClient);

        // Body is not split, and the original body stream is used.
        expect(request.debugNumSplits, equals(0));
      });

      test('| body is split twice when contentLength is not given', () async {
        final request = AWSStreamedHttpRequest(
          method: AWSHttpMethod.post,
          uri: uri,
          body: makeBody(),
        );
        final signedRequest = await signer.sign(
          request,
          credentialScope: AWSCredentialScope.raw(
            region: 'us-west-2',
            service: 'service',
          ),
          serviceConfiguration: serviceConfiguration,
        );
        await signedRequest.send(mockClient);

        // Body is split twice, once to get the content length, then again to
        // read the body which cannot be read from the original body stream.
        expect(request.debugNumSplits, equals(2));
      });
    });
  });
}

class MockHttpClient extends MockClient {
  MockHttpClient() : super(_send);

  static Future<Response> _send(Request request) async {
    // Assert the request is finalized.
    request.body;
    return Response('', 200);
  }
}

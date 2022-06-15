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

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

import '../common.dart';

void main() {
  const bodyHash =
      '44ce7dd67c959e0d3524ffac1771dfbba87d2b6b4b4e99e42034a8b803f8b072';
  AWSBaseHttpRequest createRequest() => AWSHttpRequest(
        method: AWSHttpMethod.put,
        uri: Uri.https(
          'examplebucket.s3.amazonaws.com',
          r'/test$file.text',
        ),
        body: 'Welcome to Amazon S3.'.codeUnits,
      );

  Future<void> expectHash({
    required bool signPayload,
    required bool chunked,
    required Matcher expected,
  }) async {
    final serviceConfiguration = S3ServiceConfiguration(
      signPayload: signPayload,
      chunked: chunked,
    );
    final payloadHash = await serviceConfiguration.hashPayload(
      createRequest(),
      presignedUrl: false,
    );
    final syncPayloadHash = serviceConfiguration.hashPayloadSync(
      createRequest(),
      presignedUrl: false,
    );

    expect(payloadHash, expected);
    expect(syncPayloadHash, expected);
  }

  group('S3ServiceConfiguration', () {
    test('signPayload=true chunked=true', () {
      expectHash(
        signPayload: true,
        chunked: true,
        expected: equals(S3ServiceConfiguration.chunkedPayloadSeedHash),
      );
    });

    test('signPayload=true chunked=false', () {
      expectHash(
        signPayload: true,
        chunked: false,
        expected: equals(bodyHash),
      );
    });

    test('signPayload=false chunked=false', () {
      expectHash(
        signPayload: false,
        chunked: false,
        expected: equals(S3ServiceConfiguration.unsignedPayloadHash),
      );
    });

    test('signPayload=false chunked=true', () {
      expect(
        () => S3ServiceConfiguration(
          signPayload: false,
          chunked: true,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    group(
      'GET/HEAD do not contain body on Web',
      () {
        final request = AWSHttpRequest.get(Uri.parse('https://example.com'));
        const signer = AWSSigV4Signer(
          credentialsProvider: AWSCredentialsProvider(dummyCredentials),
        );
        final serviceConfigurations = [
          S3ServiceConfiguration(chunked: true, signPayload: true),
          S3ServiceConfiguration(chunked: false, signPayload: true),
          S3ServiceConfiguration(chunked: false, signPayload: false),
        ];

        void expectNoContentLength(Iterable<String> signedHeaders) {
          expect(
            CaseInsensitiveSet(signedHeaders),
            isNot(contains(AWSHeaders.contentLength)),
          );
        }

        group('sign', () {
          for (final serviceConfiguration in serviceConfigurations) {
            test(
              'chunked=${serviceConfiguration.chunked}, '
              'signPayload=${serviceConfiguration.signPayload}',
              () async {
                final signedRequest = await signer.sign(
                  request,
                  credentialScope: dummyCredentialScope,
                  serviceConfiguration: serviceConfiguration,
                );
                expectNoContentLength(
                  signedRequest.canonicalRequest.signedHeaders,
                );
              },
            );
          }
        });

        group('signSync', () {
          for (final serviceConfiguration in serviceConfigurations) {
            test(
              'chunked=${serviceConfiguration.chunked}, '
              'signPayload=${serviceConfiguration.signPayload}',
              () {
                final signedRequest = signer.signSync(
                  request,
                  credentialScope: dummyCredentialScope,
                  serviceConfiguration: serviceConfiguration,
                );
                expectNoContentLength(
                  signedRequest.canonicalRequest.signedHeaders,
                );
              },
            );
          }
        });
      },
      testOn: 'browser',
    );
  });
}

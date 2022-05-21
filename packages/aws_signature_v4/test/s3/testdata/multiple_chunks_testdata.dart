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

// ignore_for_file: lines_longer_than_80_chars

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:aws_signature_v4/src/configuration/services/s3.dart';

import '../../c_test_suite/test_data.dart';
import 'util.dart';

final serviceConfiguration = S3ServiceConfiguration(
  chunked: true,
  chunkSize: 64 * 1024,
  signPayload: true,
  encoding: S3PayloadEncoding.none,
);

final putObjectTestData = SignerTestMethodData(
  method: SignerTestMethod.header,
  canonicalRequest: '''
PUT
/examplebucket/chunkObject.txt

content-encoding:aws-chunked
content-length:66824
host:s3.amazonaws.com
x-amz-content-sha256:STREAMING-AWS4-HMAC-SHA256-PAYLOAD
x-amz-date:20130524T000000Z
x-amz-decoded-content-length:66560
x-amz-storage-class:REDUCED_REDUNDANCY

content-encoding;content-length;host;x-amz-content-sha256;x-amz-date;x-amz-decoded-content-length;x-amz-storage-class
STREAMING-AWS4-HMAC-SHA256-PAYLOAD''',
  stringToSign: '''
AWS4-HMAC-SHA256
20130524T000000Z
20130524/us-east-1/s3/aws4_request
cee3fed04b70f867d036f722359b0b1f2f0e5dc0efadbc082b76c4c60e316455''',
  signature: '4f232c4386841ef735655705268965c44a0e4690baa4adea153f7db9fa80a0a9',
  signedRequest: AWSStreamedHttpRequest(
    method: AWSHttpMethod.put,
    uri: Uri.https(
      's3.amazonaws.com',
      '/examplebucket/chunkObject.txt',
    ),
    headers: {
      'Host': 's3.amazonaws.com',
      'x-amz-date': '20130524T000000Z',
      'x-amz-storage-class': 'REDUCED_REDUNDANCY',
      'Content-Encoding': 'aws-chunked',
      'x-amz-decoded-content-length': '66560',
      'x-amz-content-sha256': 'STREAMING-AWS4-HMAC-SHA256-PAYLOAD',
      'Content-Length': '66824',
      'Authorization':
          'AWS4-HMAC-SHA256 Credential=AKIAIOSFODNN7EXAMPLE/20130524/us-east-1/s3/aws4_request, SignedHeaders=content-encoding;content-length;host;x-amz-content-sha256;x-amz-date;x-amz-decoded-content-length;x-amz-storage-class, Signature=4f232c4386841ef735655705268965c44a0e4690baa4adea153f7db9fa80a0a9',
    },
    body: Stream.fromIterable([
      ('10000;chunk-signature=ad80c730a21e5b8d04586a2213dd63b9a0e99e0e2307b0ade35a65485a288648\r\n${'a' * 65536}\r\n')
          .codeUnits,
      ('400;chunk-signature=0055627c9e194cb4542bae2aa5492e3c1575bbb81b612b7d234b86a503ef5497\r\n${'a' * 1024}\r\n')
          .codeUnits,
      ('0;chunk-signature=b6c6ea8a5354eaf15b3cb7646744f4275b71ea724fed81ceb9323e279d449df9\r\n\r\n')
          .codeUnits,
    ]),
    contentLength: 66824,
  ),
);

final putObjectTest = SignerTest(
  name: 'PUT Object',
  context: buildContext(),
  request: AWSStreamedHttpRequest(
    method: AWSHttpMethod.put,
    uri: Uri.https(
      's3.amazonaws.com',
      '/examplebucket/chunkObject.txt',
    ),
    headers: {
      'x-amz-storage-class': 'REDUCED_REDUNDANCY',
    },
    body: Stream.multi(
      (controller) => controller.addStream(chunks),
    ),
    contentLength: 66560,
  ),
  headerTestData: putObjectTestData,
  serviceConfiguration: serviceConfiguration,
);

Stream<List<int>> get chunks async* {
  for (var i = 0; i < 65 * 1024; i++) {
    yield [97];
  }
}

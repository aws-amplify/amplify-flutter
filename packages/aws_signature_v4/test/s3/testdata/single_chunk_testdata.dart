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
import 'package:aws_signature_v4/src/configuration/services/s3.dart';

import '../../c_test_suite/test_data.dart';

import 'util.dart';

final serviceConfiguration = S3ServiceConfiguration(
  signPayload: true,
  chunked: false,
);

final testCases = <SignerTest>[
  getObjectTest,
  putObjectTest,
  getBucketLifecycleTest,
  getBucketListObjectsTest,
];

final getObjectTestData = SignerTestMethodData(
  method: SignerTestMethod.header,
  canonicalRequest: '''
GET
/test.txt

host:examplebucket.s3.amazonaws.com
range:bytes=0-9
x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
x-amz-date:20130524T000000Z

host;range;x-amz-content-sha256;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855''',
  stringToSign: '''
AWS4-HMAC-SHA256
20130524T000000Z
20130524/us-east-1/s3/aws4_request
7344ae5b7ee6c3e7e6b0fe0640412a37625d1fbfff95c48bbb2dc43964946972''',
  signature: 'f0e8bdb87c964420e857bd35b5d6ed310bd44f0170aba48dd91039c6036bdb41',
  signedRequest: AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.https(
      'examplebucket.s3.amazonaws.com',
      '/test.txt',
    ),
    headers: const {
      'Host': 'examplebucket.s3.amazonaws.com',
      'x-amz-date': '20130524T000000Z',
      'Range': 'bytes=0-9',
      'x-amz-content-sha256':
          'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
      'Authorization':
          'AWS4-HMAC-SHA256 Credential=AKIAIOSFODNN7EXAMPLE/20130524/us-east-1/s3/aws4_request, SignedHeaders=host;range;x-amz-content-sha256;x-amz-date, Signature=f0e8bdb87c964420e857bd35b5d6ed310bd44f0170aba48dd91039c6036bdb41',
    },
  ),
);

final getObjectTest = SignerTest(
  name: 'GET Object',
  context: buildContext(),
  request: AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.https(
      'examplebucket.s3.amazonaws.com',
      '/test.txt',
    ),
    headers: const {
      'Range': 'bytes=0-9',
    },
  ),
  headerTestData: getObjectTestData,
  serviceConfiguration: serviceConfiguration,
);

final putObjectTestData = SignerTestMethodData(
  method: SignerTestMethod.header,
  canonicalRequest: '''
PUT
/test%24file.text

date:Fri, 24 May 2013 00:00:00 GMT
host:examplebucket.s3.amazonaws.com
x-amz-content-sha256:44ce7dd67c959e0d3524ffac1771dfbba87d2b6b4b4e99e42034a8b803f8b072
x-amz-date:20130524T000000Z
x-amz-storage-class:REDUCED_REDUNDANCY

date;host;x-amz-content-sha256;x-amz-date;x-amz-storage-class
44ce7dd67c959e0d3524ffac1771dfbba87d2b6b4b4e99e42034a8b803f8b072''',
  stringToSign: '''
AWS4-HMAC-SHA256
20130524T000000Z
20130524/us-east-1/s3/aws4_request
9e0e90d9c76de8fa5b200d8c849cd5b8dc7a3be3951ddb7f6a76b4158342019d''',
  signature: '98ad721746da40c64f1a55b78f14c238d841ea1380cd77a1b5971af0ece108bd',
  signedRequest: AWSHttpRequest(
    method: AWSHttpMethod.put,
    uri: Uri.https(
      'examplebucket.s3.amazonaws.com',
      r'test$file.text',
    ),
    headers: const {
      'x-amz-storage-class': 'REDUCED_REDUNDANCY',
      'Host': 'examplebucket.s3.amazonaws.com',
      'x-amz-date': '20130524T000000Z',
      'Authorization':
          'AWS4-HMAC-SHA256 Credential=AKIAIOSFODNN7EXAMPLE/20130524/us-east-1/s3/aws4_request, SignedHeaders=date;host;x-amz-content-sha256;x-amz-date;x-amz-storage-class, Signature=98ad721746da40c64f1a55b78f14c238d841ea1380cd77a1b5971af0ece108bd',
      'Date': 'Fri, 24 May 2013 00:00:00 GMT',
      'x-amz-content-sha256':
          '44ce7dd67c959e0d3524ffac1771dfbba87d2b6b4b4e99e42034a8b803f8b072',
    },
    body: 'Welcome to Amazon S3.'.codeUnits,
  ),
);

final putObjectTest = SignerTest(
  name: 'PUT Object',
  context: buildContext(),
  request: AWSHttpRequest(
    method: AWSHttpMethod.put,
    uri: Uri.https(
      'examplebucket.s3.amazonaws.com',
      r'test$file.text',
    ),
    headers: const {
      'Date': 'Fri, 24 May 2013 00:00:00 GMT',
      'x-amz-storage-class': 'REDUCED_REDUNDANCY',
    },
    body: 'Welcome to Amazon S3.'.codeUnits,
  ),
  headerTestData: putObjectTestData,
  serviceConfiguration: serviceConfiguration,
);

final getBucketLifecycleTestData = SignerTestMethodData(
  method: SignerTestMethod.header,
  canonicalRequest: '''
GET
/
lifecycle=
host:examplebucket.s3.amazonaws.com
x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
x-amz-date:20130524T000000Z

host;x-amz-content-sha256;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855''',
  stringToSign: '''
AWS4-HMAC-SHA256
20130524T000000Z
20130524/us-east-1/s3/aws4_request
9766c798316ff2757b517bc739a67f6213b4ab36dd5da2f94eaebf79c77395ca''',
  signature: 'fea454ca298b7da1c68078a5d1bdbfbbe0d65c699e0f91ac7a200a0136783543',
  signedRequest: AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.https(
      'examplebucket.s3.amazonaws.com',
      '/',
      const <String, String>{
        'lifecycle': '',
      },
    ),
    headers: const {
      'Host': 'examplebucket.s3.amazonaws.com',
      'Authorization':
          'AWS4-HMAC-SHA256 Credential=AKIAIOSFODNN7EXAMPLE/20130524/us-east-1/s3/aws4_request, SignedHeaders=host;x-amz-content-sha256;x-amz-date, Signature=fea454ca298b7da1c68078a5d1bdbfbbe0d65c699e0f91ac7a200a0136783543',
      'x-amz-date': '20130524T000000Z',
      'x-amz-content-sha256':
          'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
    },
  ),
);

final getBucketLifecycleTest = SignerTest(
  name: 'GET Bucket Lifecycle',
  context: buildContext(),
  request: AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.https(
      'examplebucket.s3.amazonaws.com',
      '/',
      const <String, String>{
        'lifecycle': '',
      },
    ),
  ),
  headerTestData: getBucketLifecycleTestData,
  serviceConfiguration: serviceConfiguration,
);

final getBucketListObjectsTestData = SignerTestMethodData(
  method: SignerTestMethod.header,
  canonicalRequest: '''
GET
/
max-keys=2&prefix=J
host:examplebucket.s3.amazonaws.com
x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
x-amz-date:20130524T000000Z

host;x-amz-content-sha256;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855''',
  stringToSign: '''
AWS4-HMAC-SHA256
20130524T000000Z
20130524/us-east-1/s3/aws4_request
df57d21db20da04d7fa30298dd4488ba3a2b47ca3a489c74750e0f1e7df1b9b7''',
  signature: '34b48302e7b5fa45bde8084f4b7868a86f0a534bc59db6670ed5711ef69dc6f7',
  signedRequest: AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.https(
      'examplebucket.s3.amazonaws.com',
      '/',
      const <String, String>{
        'max-keys': '2',
        'prefix': 'J',
      },
    ),
    headers: const {
      'Host': 'examplebucket.s3.amazonaws.com',
      'Authorization':
          'AWS4-HMAC-SHA256 Credential=AKIAIOSFODNN7EXAMPLE/20130524/us-east-1/s3/aws4_request, SignedHeaders=host;x-amz-content-sha256;x-amz-date, Signature=34b48302e7b5fa45bde8084f4b7868a86f0a534bc59db6670ed5711ef69dc6f7',
      'x-amz-date': '20130524T000000Z',
      'x-amz-content-sha256':
          'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
    },
  ),
);

final getBucketListObjectsTest = SignerTest(
  name: 'GET Bucket (List Objects)',
  context: buildContext(),
  request: AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.https(
      'examplebucket.s3.amazonaws.com',
      '/',
      const <String, String>{
        'max-keys': '2',
        'prefix': 'J',
      },
    ),
  ),
  headerTestData: getBucketListObjectsTestData,
  serviceConfiguration: serviceConfiguration,
);

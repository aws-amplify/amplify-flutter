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

import 'dart:convert';
import 'dart:math';

import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:smoke_test/src/sdk/s3.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  group('S3', () {
    const host = 'localhost.localstack.cloud:4566';
    late final S3Client client;

    setUpAll(() {
      client = S3Client(
        region: 'us-west-2',
        baseUri: Uri.http(host),
        s3ClientConfig: S3ClientConfig(),
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        client: localClient,
      );
    });

    // Modeled after:
    // https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/s3-example-creating-buckets.html
    test('Creating and using buckets', () async {
      // Create the bucket
      final bucket = 'mybucket-${Random().nextInt(1 << 30)}';
      await client.createBucket(
        CreateBucketRequest(
          bucket: bucket,
          createBucketConfiguration: CreateBucketConfiguration(
            locationConstraint: BucketLocationConstraint.usWest2,
          ),
        ),
      );

      const key = 'my-file.json';
      const data = {'data': 'Hello, world'};

      // Upload a file
      {
        final response = await client.putObject(
          PutObjectRequest(
            bucket: bucket,
            key: key,
            contentType: 'application/json',
            body: Stream.value(utf8.encode(jsonEncode(data))),
          ),
        );
        print('Put object: $response');
      }

      // Get file metadata
      {
        final response = await client.headObject(
          HeadObjectRequest(bucket: bucket, key: key),
        );
        print('Got metadata: $response');
        expect(response.contentType, 'application/json');
      }

      // Retrieve file
      {
        final response = await client.getObject(
          GetObjectRequest(bucket: bucket, key: key),
        );
        print('Got object: $response');
        expect(response.contentType, 'application/json');
        final body = await utf8.decodeStream(
          response.body ?? const Stream.empty(),
        );
        expect(jsonDecode(body), equals(data));
      }

      // List all objects
      {
        final response = await client.listObjectsV2(
          ListObjectsV2Request(bucket: bucket),
        );
        print('All objects: ${response.items}');
        expect(response.hasNext, false);
        expect(response.items.keyCount, 1);
        expect(response.items.contents, hasLength(1));
        final item = response.items.contents!.single;
        expect(item.key, key);
      }

      // Delete the item
      {
        final response = await client.deleteObject(
          DeleteObjectRequest(bucket: bucket, key: key),
        );
        print('Deleted item: $response');
        expect(response.deleteMarker, isNot(false));
      }

      // Delete the bucket
      {
        await expectLater(
          client.deleteBucket(
            DeleteBucketRequest(bucket: bucket),
          ),
          completes,
        );
        print('Deleted bucket');
      }
    });
  });
}

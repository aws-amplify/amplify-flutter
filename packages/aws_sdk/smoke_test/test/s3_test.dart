// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:math';

import 'package:aws_common/aws_common.dart';
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
        s3ClientConfig: const S3ClientConfig(),
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
      await client
          .createBucket(
            CreateBucketRequest(
              bucket: bucket,
              createBucketConfiguration: CreateBucketConfiguration(
                locationConstraint: BucketLocationConstraint.usWest2,
              ),
            ),
          )
          .result;

      const key = 'my-file.json';
      const data = {'data': 'Hello, world'};

      // Upload a file
      {
        final response = await client
            .putObject(
              PutObjectRequest(
                bucket: bucket,
                key: key,
                contentType: 'application/json',
                body: Stream.value(utf8.encode(jsonEncode(data))),
              ),
            )
            .result;
        safePrint('Put object: $response');
      }

      // Get file metadata
      {
        final response = await client
            .headObject(
              HeadObjectRequest(bucket: bucket, key: key),
            )
            .result;
        safePrint('Got metadata: $response');
        expect(response.contentType, 'application/json');
      }

      // Retrieve file
      {
        final response = await client
            .getObject(
              GetObjectRequest(bucket: bucket, key: key),
            )
            .result;
        safePrint('Got object: $response');
        expect(response.contentType, 'application/json');
        final body = await utf8.decodeStream(
          response.body ?? const Stream.empty(),
        );
        expect(jsonDecode(body), equals(data));
      }

      // List all objects
      {
        final response = await client
            .listObjectsV2(
              ListObjectsV2Request(bucket: bucket),
            )
            .result;
        safePrint('All objects: ${response.items}');
        expect(response.hasNext, false);
        expect(response.items.keyCount, 1);
        expect(response.items.contents, hasLength(1));
        final item = response.items.contents!.single;
        expect(item.key, key);
      }

      // Delete the item
      {
        final response = await client
            .deleteObject(
              DeleteObjectRequest(bucket: bucket, key: key),
            )
            .result;
        safePrint('Deleted item: $response');
        expect(response.deleteMarker, isNot(false));
      }

      // Delete the bucket
      {
        await expectLater(
          client
              .deleteBucket(
                DeleteBucketRequest(bucket: bucket),
              )
              .result,
          completes,
        );
        safePrint('Deleted bucket');
      }
    });
  });
}

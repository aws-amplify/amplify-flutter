// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
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

    Future<String> createBucket() async {
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
      return bucket;
    }

    Future<void> deleteBucket(String bucket) async {
      // Delete all objects from the bucket.
      final output = await client
          .listObjectsV2(
            ListObjectsV2Request(bucket: bucket),
          )
          .result;
      expect(output.hasNext, isFalse, reason: 'Expected <1000 items');

      await client
          .deleteObjects(
            DeleteObjectsRequest(
              bucket: bucket,
              delete: Delete(
                objects: output.items.contents!
                    .map((obj) => ObjectIdentifier(key: obj.key!))
                    .toList(),
              ),
            ),
          )
          .result;

      // Delete the bucket
      await client.deleteBucket(DeleteBucketRequest(bucket: bucket)).result;
    }

    // Modeled after:
    // https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/s3-example-creating-buckets.html
    test('Creating and using buckets', () async {
      // Create the bucket
      final bucket = await createBucket();

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

      await expectLater(
        deleteBucket(bucket),
        throwsA(isA<NoSuchBucket>()),
      );
    });

    test('download cancellation', () async {
      final bucket = await createBucket();
      addTearDown(() => deleteBucket(bucket));

      const key = 'my-file';

      // Upload a large file
      {
        final kilobyte = List.generate(1024, (index) => index);
        final largeData = () async* {
          // Generate 100MiB of data
          for (var i = 0; i < 100 * 1024; i++) {
            yield kilobyte;
          }
        }();
        final response = await client
            .putObject(
              PutObjectRequest(
                bucket: bucket,
                key: key,
                body: largeData,
              ),
            )
            .result;
        safePrint('Put object: $response');
      }

      // Download file
      final response = await client
          .getObject(
            GetObjectRequest(bucket: bucket, key: key),
          )
          .result;
      var progress = 0;
      final subscription = response.body!.listen(
        (chunk) => progress += chunk.length,
      );
      await Future<void>.delayed(const Duration(milliseconds: 50));
      await subscription.cancel();
      final progressAfterCancel = progress;
      expect(
        progressAfterCancel,
        lessThan(100 << 20),
        reason: 'Stream should have been canceled before download completes',
      );
      await Future<void>.delayed(const Duration(seconds: 1));
      expect(
        progress,
        progressAfterCancel,
        reason: 'Stream should not emit further events after canceling',
      );
    });
  });
}

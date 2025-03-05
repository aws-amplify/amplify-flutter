import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/storage/bucket_outputs.dart';
import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
import 'package:test/test.dart';

void main() {
  group('Storage bucket resolve BucketInfo', () {
    const defaultBucketOutputs = BucketOutputs(
      name: 'default-bucket-friendly-name',
      bucketName: 'default-bucket-unique-name',
      awsRegion: 'default-bucket-aws-region',
    );
    const secondBucketOutputs = BucketOutputs(
      name: 'second-bucket-friendly-name',
      bucketName: 'second-bucket-unique-name',
      awsRegion: 'second-bucket-aws-region',
    );
    final defaultBucketInfo = BucketInfo(
      bucketName: defaultBucketOutputs.bucketName,
      region: defaultBucketOutputs.awsRegion,
    );
    final secondBucketInfo = BucketInfo(
      bucketName: secondBucketOutputs.bucketName,
      region: secondBucketOutputs.awsRegion,
    );
    final testStorageOutputsMultiBucket = StorageOutputs(
      awsRegion: defaultBucketOutputs.awsRegion,
      bucketName: defaultBucketOutputs.bucketName,
      buckets: [defaultBucketOutputs, secondBucketOutputs],
    );
    final testStorageOutputsSingleBucket = StorageOutputs(
      awsRegion: defaultBucketOutputs.awsRegion,
      bucketName: defaultBucketOutputs.bucketName,
    );

    test('should return same bucket info when storage bucket is created from'
        ' a bucket info', () {
      final storageBucket = StorageBucket.fromBucketInfo(defaultBucketInfo);
      final bucketInfo = storageBucket.resolveBucketInfo(null);
      expect(bucketInfo, defaultBucketInfo);
    });

    test('should return bucket info when storage bucket is created from'
        ' buckets in storage outputs', () {
      final storageBucket = StorageBucket.fromOutputs(secondBucketOutputs.name);
      final bucketInfo = storageBucket.resolveBucketInfo(
        testStorageOutputsMultiBucket,
      );
      expect(bucketInfo, secondBucketInfo);
    });

    test('should throw assertion error when storage bucket is created from'
        ' outputs and storage outputs is null', () {
      final storageBucket = StorageBucket.fromOutputs(
        defaultBucketOutputs.name,
      );
      expect(
        () => storageBucket.resolveBucketInfo(null),
        throwsA(isA<AssertionError>()),
      );
    });
    test(
      'should throw exception when storage bucket is created from outputs and'
      ' storage outputs does not have buckets',
      () {
        final storageBucket = StorageBucket.fromOutputs('bucket-name');
        expect(
          () => storageBucket.resolveBucketInfo(testStorageOutputsSingleBucket),
          throwsA(isA<InvalidStorageBucketException>()),
        );
      },
    );
    test(
      'should throw exception when storage bucket is created from outputs and'
      ' bucket name does not match any bucket in storage outputs',
      () {
        final storageBucket = StorageBucket.fromOutputs('invalid-bucket-name');
        expect(
          () => storageBucket.resolveBucketInfo(testStorageOutputsMultiBucket),
          throwsA(isA<InvalidStorageBucketException>()),
        );
      },
    );
  });
}

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.storage.storage_bucket_from_outputs}
/// Creates a [StorageBucket] defined by the name in AmplifyOutputs file.
/// {@endtemplate}
@internal
class StorageBucketFromOutputs implements StorageBucket {
  /// {@macro amplify_core.storage.storage_bucket_from_outputs}
  const StorageBucketFromOutputs(this._name);

  final String _name;

  @override
  BucketInfo resolveBucketInfo(StorageOutputs? storageOutputs) {
    assert(
      storageOutputs != null,
      const InvalidStorageBucketException(
        'Amplify Outputs file does not have storage configuration.',
        recoverySuggestion:
            'Make sure Amplify Storage is configured and the Amplify Outputs '
            'file has storage configuration.',
      ),
    );

    final bucket = storageOutputs!.buckets?.singleWhere(
      (e) => e.name == _name,
      orElse: () => throw const InvalidStorageBucketException(
        'Unable to lookup bucket from provided name in Amplify Outputs file.',
        recoverySuggestion: 'Make sure Amplify Outputs file has the specified '
            'bucket configuration.',
      ),
    );
    if (bucket == null) {
      throw const InvalidStorageBucketException(
        'Amplify Outputs storage configuration does not have buckets specified.',
        recoverySuggestion:
            'Make sure Amplify Outputs file has storage configuration with '
            'buckets specified.',
      );
    }
    return BucketInfo(bucketName: bucket.bucketName, region: bucket.awsRegion);
  }
}

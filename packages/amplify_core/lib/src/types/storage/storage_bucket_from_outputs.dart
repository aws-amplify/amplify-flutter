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
        'Amplify Storage is not configured.',
        recoverySuggestion:
            'Make sure storage exists in the Amplify Outputs file.',
      ),
    );
    // TODO(nikahsn): fix after adding buckets to StorageOutputs.
    return BucketInfo(
      bucketName: _name,
      region: storageOutputs!.awsRegion,
    );
  }
}

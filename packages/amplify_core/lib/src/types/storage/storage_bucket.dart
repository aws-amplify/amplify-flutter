import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
import 'package:amplify_core/src/types/storage/bucket_info.dart';
import 'package:amplify_core/src/types/storage/storage_bucket_from_outputs.dart';
import 'package:meta/meta.dart';

/// Presents a storage bucket.
class StorageBucket {
  /// Creates a [StorageBucket] from [BucketInfo].
  const StorageBucket.fromBucketInfo(this._info);

  /// Creates a [StorageBucket] defined by the [name] in AmplifyOutputs file.
  factory StorageBucket.fromOutputs(String name) =>
      StorageBucketFromOutputs(name);

  final BucketInfo _info;

  @internal
  BucketInfo resolveBucketInfo(StorageOutputs? storageOutputs) => _info;
}

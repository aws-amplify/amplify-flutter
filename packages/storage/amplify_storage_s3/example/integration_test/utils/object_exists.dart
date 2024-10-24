import 'package:amplify_core/amplify_core.dart';

/// Returns true if an object exists at the given [path].
Future<bool> objectExists(StoragePath path) async {
  try {
    await Amplify.Storage.getProperties(
      path: path,
    ).result;
    return true;
  } on StorageNotFoundException {
    return false;
  }
}

/// Returns true if an object exists in multiple [buckets] at [path].
Future<bool> objectExistsInBuckets(
  StoragePath path,
  List<StorageBucket> buckets,
) async {
  try {
    await Future.wait(
      buckets.map(
        (bucket) => Amplify.Storage.getProperties(
          path: path,
          options: StorageGetPropertiesOptions(bucket: bucket),
        ).result,
      ),
    );
    return true;
  } on StorageNotFoundException {
    return false;
  }
}

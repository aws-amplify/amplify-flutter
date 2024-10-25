import 'package:amplify_core/amplify_core.dart';

/// Returns true if an object exists at the given [path].
Future<bool> objectExists(StoragePath path, {StorageBucket? bucket}) async {
  try {
    await Amplify.Storage.getProperties(
      path: path,
      options: StorageGetPropertiesOptions(bucket: bucket),
    ).result;
    return true;
  } on StorageNotFoundException {
    return false;
  }
}

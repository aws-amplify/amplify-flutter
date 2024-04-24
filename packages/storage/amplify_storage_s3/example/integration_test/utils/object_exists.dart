import 'package:amplify_core/amplify_core.dart';

/// Returns true if an object exists at the given [path].
Future<bool> objectExists(StoragePath path) async {
  try {
    await Amplify.Storage.getProperties(path: path).result;
    return true;
  } on StorageNotFoundException {
    return false;
  }
}

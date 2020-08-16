import '../Storage/StorageAccessLevel.dart';
import '../Storage/StorageOptions.dart';

class ListOptions extends StorageOptions {
  StorageAccessLevel accessLevel;

  ListOptions({this.accessLevel = StorageAccessLevel.guest}) : super();

  @override
  Map<String, dynamic> serializeAsMap() {
    throw UnimplementedError(
        'serializeAsMap() has not been implemented on ListOptions.');
  }
}

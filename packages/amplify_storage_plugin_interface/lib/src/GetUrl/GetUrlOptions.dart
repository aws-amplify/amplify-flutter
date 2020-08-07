import '../Storage/StorageAccessLevel.dart';
import '../Storage/StorageOptions.dart';

class GetUrlOptions extends StorageOptions {
  StorageAccessLevel accessLevel;
  int expires;

  GetUrlOptions({this.accessLevel = StorageAccessLevel.public, this.expires})
      : super();

  @override
  Map<String, dynamic> serializeAsMap() {
    throw UnimplementedError(
        'serializeAsMap() has not been implemented on GetUrlOptions.');
  }
}

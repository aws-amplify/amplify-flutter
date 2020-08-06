import '../Storage/StorageAccessLevel.dart';
import '../Storage/StorageOptions.dart';

class UploadFileOptions extends StorageOptions {
  StorageAccessLevel accessLevel;
  String contentType;
  Map<String, String> metadata;

  UploadFileOptions(
      {this.accessLevel = StorageAccessLevel.public,
      this.contentType,
      this.metadata})
      : super();

  @override
  Map<String, dynamic> serializeAsMap() {
    throw UnimplementedError(
        'serializeAsMap() has not been implemented on UploadFileOptions.');
  }
}

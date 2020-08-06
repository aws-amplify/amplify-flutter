import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';

class S3UploadFileOptions extends UploadFileOptions {
  String targetIdentityId;
  S3UploadFileOptions(
      {StorageAccessLevel accessLevel,
      String contentType,
      Map<String, String> metadata,
      this.targetIdentityId})
      : super(
            accessLevel: accessLevel,
            contentType: contentType,
            metadata: metadata);

  @override
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> optionsMap = <String, dynamic>{};
    if (accessLevel != null) {
      optionsMap["accessLevel"] = accessLevel;
    }

    if (contentType != null) {
      optionsMap["contentType"] = contentType;
    }

    if (metadata != null) {
      optionsMap["metadata"] = metadata;
    }

    if (targetIdentityId != null) {
      optionsMap["targetIdentityId"] = targetIdentityId;
    }
    return optionsMap;
  }
}

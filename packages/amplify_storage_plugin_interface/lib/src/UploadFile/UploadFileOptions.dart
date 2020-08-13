import 'package:flutter/foundation.dart';
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
    final Map<String, dynamic> optionsMap = <String, dynamic>{};
    if (accessLevel != null) {
      optionsMap["accessLevel"] = describeEnum(accessLevel);
    }

    if (contentType != null) {
      optionsMap["contentType"] = contentType;
    }

    if (metadata != null) {
      optionsMap["metadata"] = metadata;
    }

    return optionsMap;
  }
}

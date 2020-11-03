import 'package:flutter/foundation.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';

class S3ListOptions extends ListOptions {
  String targetIdentityId;

  S3ListOptions(
      {StorageAccessLevel accessLevel = StorageAccessLevel.guest,
      this.targetIdentityId})
      : super(accessLevel: accessLevel);

  @override
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> optionsMap = <String, dynamic>{};
    if (accessLevel != null) {
      optionsMap["accessLevel"] = describeEnum(accessLevel);
    }

    if (targetIdentityId != null) {
      optionsMap["targetIdentityId"] = targetIdentityId;
    }
    return optionsMap;
  }
}

import 'package:flutter/foundation.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';

class S3GetUrlOptions extends GetUrlOptions {
  String targetIdentityId;
  S3GetUrlOptions(
      {StorageAccessLevel accessLevel, int expires, this.targetIdentityId})
      : super(accessLevel: accessLevel, expires: expires);

  @override
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> optionsMap = <String, dynamic>{};
    if (accessLevel != null) {
      optionsMap["accessLevel"] = describeEnum(accessLevel);
    }

    if (expires != null) {
      optionsMap["expires"] = expires;
    }

    if (targetIdentityId != null) {
      optionsMap["targetIdentityId"] = targetIdentityId;
    }
    return optionsMap;
  }
}

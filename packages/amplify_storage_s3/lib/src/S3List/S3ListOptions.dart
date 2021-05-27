import 'package:flutter/foundation.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';

class S3ListOptions extends ListOptions {
  String? targetIdentityId;

  S3ListOptions(
      {StorageAccessLevel accessLevel = StorageAccessLevel.guest,
      this.targetIdentityId})
      : super(accessLevel: accessLevel);

  @override
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> optionsMap = <String, dynamic>{
      'accessLevel': describeEnum(accessLevel),
      'targetIdentifyId': targetIdentityId
    };
    optionsMap.removeWhere((_, v) => v == null);
    return optionsMap;
  }
}

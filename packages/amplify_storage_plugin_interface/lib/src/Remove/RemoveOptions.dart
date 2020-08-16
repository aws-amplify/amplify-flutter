import '../Storage/StorageAccessLevel.dart';
import '../Storage/StorageOptions.dart';
import 'package:flutter/foundation.dart';

class RemoveOptions extends StorageOptions {
  StorageAccessLevel accessLevel;

  RemoveOptions({this.accessLevel = StorageAccessLevel.guest}) : super();

  @override
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> optionsMap = <String, dynamic>{};
    if (accessLevel != null) {
      optionsMap["accessLevel"] = describeEnum(accessLevel);
    }
    return optionsMap;
  }
}

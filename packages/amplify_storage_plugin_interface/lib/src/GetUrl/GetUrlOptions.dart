import 'package:flutter/foundation.dart';
import '../Storage/StorageAccessLevel.dart';
import '../Storage/StorageOptions.dart';

class GetUrlOptions extends StorageOptions {
  StorageAccessLevel accessLevel;
  int expires;

  GetUrlOptions({this.accessLevel = StorageAccessLevel.public, this.expires})
      : super();

  @override
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> optionsMap = <String, dynamic>{};

    optionsMap["accessLevel"] = describeEnum(accessLevel);

    if (expires != null) {
      optionsMap["expires"] = expires;
    }

    return optionsMap;
  }
}

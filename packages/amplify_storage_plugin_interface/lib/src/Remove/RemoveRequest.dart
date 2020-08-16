import 'package:flutter/foundation.dart';
import './RemoveOptions.dart';

class RemoveRequest {
  String key;
  RemoveOptions options;

  RemoveRequest({@required this.key, this.options});

  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> result = <String, dynamic>{};
    result['key'] = key;
    if (options != null) {
      result['options'] = options.serializeAsMap();
    }
    return result;
  }
}

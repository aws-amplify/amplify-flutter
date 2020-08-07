import 'package:flutter/foundation.dart';
import './GetUrlOptions.dart';

class GetUrlRequest {
  String key;
  GetUrlOptions options;

  GetUrlRequest({@required this.key, this.options});

  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> result = <String, dynamic>{};
    result['key'] = key;
    if (options != null) {
      result['options'] = options.serializeAsMap();
    }
    return result;
  }
}

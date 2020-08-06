import 'package:flutter/foundation.dart';
import './UploadFileOptions.dart';

class UploadFileRequest {
  String path;
  String key;
  UploadFileOptions options;

  UploadFileRequest({@required this.path, @required this.key, this.options});

  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> result = <String, dynamic>{};
    result['path'] = path;
    result['key'] = key;
    if (options != null) {
      result['options'] = options.serializeAsMap();
    }
    return result;
  }
}

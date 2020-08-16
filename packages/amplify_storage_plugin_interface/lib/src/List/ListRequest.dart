import './ListOptions.dart';

class ListRequest {
  String path;
  ListOptions options;

  ListRequest({this.path, this.options});

  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> result = <String, dynamic>{};
    if (path != null) {
      result['path'] = path;
    }
    if (options != null) {
      result['options'] = options.serializeAsMap();
    }
    return result;
  }
}

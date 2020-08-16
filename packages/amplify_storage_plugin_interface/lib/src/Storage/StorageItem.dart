import 'package:flutter/foundation.dart';

class StorageItem {
  String key;
  int size;
  DateTime lastModified;
  String eTag;

  StorageItem({@required this.key, this.size, this.lastModified, this.eTag});
}

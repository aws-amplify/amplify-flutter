import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

class SmithyJsonPlugin extends StandardJsonPlugin {
  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) {
    return object;
  }

  @override
  Object? afterSerialize(Object? object, FullType specifiedType) {
    if (object is List<int>) {
      return object;
    }
    return super.afterSerialize(object, specifiedType);
  }
}

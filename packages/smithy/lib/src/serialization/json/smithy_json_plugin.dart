import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

class SmithyJsonPlugin extends StandardJsonPlugin {
  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) {
    return object;
  }
}

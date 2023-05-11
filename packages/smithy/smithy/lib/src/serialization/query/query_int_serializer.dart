import 'package:built_value/serializer.dart';

class QueryIntSerializer implements PrimitiveSerializer<int> {
  const QueryIntSerializer();

  @override
  Iterable<Type> get types => [int];

  @override
  String get wireName => 'int';

  @override
  Object serialize(
    Serializers serializers,
    int number, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return number.toString();
  }

  @override
  int deserialize(
    Serializers serializers,
    Object? serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (serialized is int) {
      return serialized;
    }
    return int.parse(serialized as String);
  }
}

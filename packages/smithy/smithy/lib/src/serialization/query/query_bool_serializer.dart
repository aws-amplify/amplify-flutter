import 'package:built_value/serializer.dart';

class QueryBoolSerializer implements PrimitiveSerializer<bool> {
  const QueryBoolSerializer();

  @override
  Iterable<Type> get types => const [bool];

  @override
  String get wireName => 'bool';

  @override
  Object serialize(
    Serializers serializers,
    bool boolean, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return boolean.toString();
  }

  @override
  bool deserialize(
    Serializers serializers,
    Object? serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serialized as String) == 'true';
  }
}

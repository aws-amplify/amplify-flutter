import 'package:built_value/serializer.dart';

class QueryDoubleSerializer implements PrimitiveSerializer<double> {
  const QueryDoubleSerializer();

  @override
  Iterable<Type> get types => [double];

  @override
  String get wireName => 'double';

  @override
  Object serialize(
    Serializers serializers,
    double number, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return number.toString();
  }

  @override
  double deserialize(
    Serializers serializers,
    Object? serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return double.parse(serialized as String);
  }
}

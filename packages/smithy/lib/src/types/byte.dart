import 'package:built_value/serializer.dart';

class Byte {
  const Byte(int byte) : _byte = byte & 0xFF;

  final int _byte;

  int get value => _byte;
}

class ByteSerializer extends PrimitiveSerializer<Byte> {
  @override
  Byte deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return Byte(serialized as int);
  }

  @override
  Object serialize(Serializers serializers, Byte object,
      {FullType specifiedType = FullType.unspecified}) {
    return object.value;
  }

  @override
  Iterable<Type> get types => [Byte];

  @override
  String get wireName => 'byte';
}

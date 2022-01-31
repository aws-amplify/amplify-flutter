import 'package:built_value/serializer.dart';
import 'package:smithy/src/types/unit.dart';

/// Serializer for the [Unit] type.
class UnitSerializer implements StructuredSerializer<Unit> {
  const UnitSerializer();

  @override
  Unit deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return const Unit();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Unit object,
      {FullType specifiedType = FullType.unspecified}) {
    return const [];
  }

  @override
  Iterable<Type> get types => [Unit];

  @override
  String get wireName => '';
}

import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

abstract class SmithySerializer<T> implements Serializer<T> {
  const SmithySerializer(this.wireName);

  /// The protocols for which this serializer is valid.
  ///
  /// By default, this returns an empty array, which indicates it is
  /// valid for all protocols.
  Iterable<ShapeId> get supportedProtocols => const [];

  @override
  final String wireName;
}

abstract class StructuredSmithySerializer<T> extends SmithySerializer<T>
    implements StructuredSerializer<T> {
  const StructuredSmithySerializer(String wireName) : super(wireName);

  @override
  T deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified});

  @override
  Iterable<Object?> serialize(Serializers serializers, T object,
      {FullType specifiedType = FullType.unspecified});

  @override
  Iterable<Type> get types;
}

abstract class PrimitiveSmithySerializer<T> extends SmithySerializer<T>
    implements PrimitiveSerializer<T> {
  const PrimitiveSmithySerializer(String wireName) : super(wireName);

  @override
  Iterable<Type> get types;

  @override
  T deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified});

  @override
  Object serialize(Serializers serializers, T object,
      {FullType specifiedType = FullType.unspecified});
}

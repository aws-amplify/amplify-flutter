import 'package:built_value/serializer.dart';
import 'package:smithy_ast/smithy_ast.dart';

abstract class SmithySerializer<T> implements StructuredSerializer<T> {
  const SmithySerializer(this.wireName);

  /// The protocols for which this serializer is valid.
  ///
  /// By default, this returns an empty array, which indicates it is
  /// valid for all protocols.
  Iterable<ShapeId> get supportedProtocols => const [];

  @override
  final String wireName;

  @override
  T deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified});

  @override
  Iterable<Object?> serialize(Serializers serializers, T object,
      {FullType specifiedType = FullType.unspecified});

  @override
  Iterable<Type> get types;
}

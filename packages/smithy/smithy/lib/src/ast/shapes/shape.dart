// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'shape.g.dart';

@BuiltValue(instantiable: false)
abstract class Shape {
  @BuiltValueField(serialize: false)
  ShapeId get shapeId;

  TraitMap get traits;
  ShapeType getType();

  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]);

  Shape rebuild(covariant void Function(ShapeBuilder) updates);
  ShapeBuilder toBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<Shape> get serializer => ShapeSerializer();

  /// The `Unit` type's shape ID.
  static const unit = ShapeId.core('Unit');

  static final preludeShapes = <ShapeId, Shape>{
    BigDecimalShape.id: BigDecimalShape(),
    BigIntegerShape.id: BigIntegerShape(),
    BlobShape.id: BlobShape(),
    BooleanShape.id: BooleanShape(),
    ByteShape.id: ByteShape(),
    DocumentShape.id: DocumentShape(),
    DoubleShape.id: DoubleShape(),
    FloatShape.id: FloatShape(),
    IntegerShape.id: IntegerShape(),
    LongShape.id: LongShape(),
    PrimitiveBooleanShape.id: PrimitiveBooleanShape(),
    PrimitiveByteShape.id: PrimitiveByteShape(),
    PrimitiveDoubleShape.id: PrimitiveDoubleShape(),
    PrimitiveFloatShape.id: PrimitiveFloatShape(),
    PrimitiveIntegerShape.id: PrimitiveIntegerShape(),
    PrimitiveLongShape.id: PrimitiveLongShape(),
    PrimitiveShortShape.id: PrimitiveShortShape(),
    ShortShape.id: ShortShape(),
    StringShape.id: StringShape(),
    TimestampShape.id: TimestampShape(),
    unit: StructureShape(
      (b) => b
        ..shapeId = unit
        ..members = NamedMembersMap({})
        ..traits![unit] = const UnitTypeTrait(),
    ),
  };
}

class ShapeSerializer extends StructuredSerializer<Shape> {
  @override
  Shape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      if (key == 'type') {
        final type = ShapeType.deserialize(value as String);
        return serializers.deserialize(
          serialized,
          specifiedType: FullType(type.type),
        ) as Shape;
      }
    }
    throw ArgumentError('Unknown shape type');
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Shape object,
      {FullType specifiedType = FullType.unspecified}) {
    final map = serializers.serialize(
      object,
      specifiedType: FullType(object.getType().type),
    ) as Map<String, Object?>;
    map['type'] = object.getType().name;
    map.removeWhere((key, value) =>
        value == null ||
        (value is Map && value.isEmpty) ||
        (value is List && value.isEmpty));
    return map.entries.expand((entry) => [
          entry.key,
          entry.value,
        ]);
  }

  @override
  Iterable<Type> get types => [Shape];

  @override
  String get wireName => 'Shape';
}

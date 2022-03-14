import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'primitive_byte_shape.g.dart';

abstract class PrimitiveByteShape
    implements
        SimpleShape,
        Built<PrimitiveByteShape, PrimitiveByteShapeBuilder> {
  factory PrimitiveByteShape(
          [void Function(PrimitiveByteShapeBuilder) updates]) =
      _$PrimitiveByteShape;
  PrimitiveByteShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrimitiveByteShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap({});
  }

  static const id = ShapeId.core('PrimitiveByte');

  @override
  ShapeType getType() => ShapeType.byte;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.primitiveByteShape(this, parent);

  static Serializer<PrimitiveByteShape> get serializer =>
      _$primitiveByteShapeSerializer;
}

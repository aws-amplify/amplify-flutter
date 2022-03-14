import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'primitive_short_shape.g.dart';

abstract class PrimitiveShortShape
    implements
        SimpleShape,
        Built<PrimitiveShortShape, PrimitiveShortShapeBuilder> {
  factory PrimitiveShortShape(
          [void Function(PrimitiveShortShapeBuilder) updates]) =
      _$PrimitiveShortShape;
  PrimitiveShortShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrimitiveShortShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap({});
  }

  static const id = ShapeId.core('PrimitiveShort');

  @override
  ShapeType getType() => ShapeType.short;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.primitiveShortShape(this, parent);

  static Serializer<PrimitiveShortShape> get serializer =>
      _$primitiveShortShapeSerializer;
}

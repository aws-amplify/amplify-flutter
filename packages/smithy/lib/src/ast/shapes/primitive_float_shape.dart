import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'primitive_float_shape.g.dart';

abstract class PrimitiveFloatShape
    implements
        SimpleShape,
        Built<PrimitiveFloatShape, PrimitiveFloatShapeBuilder> {
  factory PrimitiveFloatShape(
          [void Function(PrimitiveFloatShapeBuilder) updates]) =
      _$PrimitiveFloatShape;
  PrimitiveFloatShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrimitiveFloatShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('PrimitiveFloat');

  @override
  ShapeType getType() => ShapeType.float;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.primitiveFloatShape(this, parent);

  static Serializer<PrimitiveFloatShape> get serializer =>
      _$primitiveFloatShapeSerializer;
}

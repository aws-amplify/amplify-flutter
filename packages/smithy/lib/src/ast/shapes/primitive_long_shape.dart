import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'primitive_long_shape.g.dart';

abstract class PrimitiveLongShape
    implements
        SimpleShape,
        Built<PrimitiveLongShape, PrimitiveLongShapeBuilder> {
  factory PrimitiveLongShape(
          [void Function(PrimitiveLongShapeBuilder) updates]) =
      _$PrimitiveLongShape;
  PrimitiveLongShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrimitiveLongShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('PrimitiveLong');

  @override
  ShapeType getType() => ShapeType.long;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.primitiveLongShape(this, parent);

  static Serializer<PrimitiveLongShape> get serializer =>
      _$primitiveLongShapeSerializer;
}

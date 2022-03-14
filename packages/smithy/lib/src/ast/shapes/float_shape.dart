import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'float_shape.g.dart';

abstract class FloatShape
    implements SimpleShape, Built<FloatShape, FloatShapeBuilder> {
  factory FloatShape([void Function(FloatShapeBuilder) updates]) = _$FloatShape;
  FloatShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FloatShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.fromTraits(const [BoxTrait()]);
  }

  static const id = ShapeId.core('Float');

  @override
  ShapeType getType() => ShapeType.float;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.floatShape(this, parent);

  static Serializer<FloatShape> get serializer => _$floatShapeSerializer;
}

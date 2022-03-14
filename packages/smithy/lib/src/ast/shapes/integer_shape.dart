import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'integer_shape.g.dart';

abstract class IntegerShape
    implements SimpleShape, Built<IntegerShape, IntegerShapeBuilder> {
  factory IntegerShape([void Function(IntegerShapeBuilder) updates]) =
      _$IntegerShape;
  IntegerShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IntegerShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.fromTraits(const [BoxTrait()]);
  }

  static const id = ShapeId.core('Integer');

  @override
  ShapeType getType() => ShapeType.integer;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.integerShape(this, parent);

  static Serializer<IntegerShape> get serializer => _$integerShapeSerializer;
}

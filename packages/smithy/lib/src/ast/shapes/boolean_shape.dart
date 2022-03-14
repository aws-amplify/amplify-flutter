import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'boolean_shape.g.dart';

abstract class BooleanShape
    implements SimpleShape, Built<BooleanShape, BooleanShapeBuilder> {
  factory BooleanShape([void Function(BooleanShapeBuilder) updates]) =
      _$BooleanShape;
  BooleanShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BooleanShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.fromTraits(const [BoxTrait()]);
  }

  static const id = ShapeId.core('Boolean');

  @override
  ShapeType getType() => ShapeType.boolean;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.booleanShape(this, parent);

  static Serializer<BooleanShape> get serializer => _$booleanShapeSerializer;
}

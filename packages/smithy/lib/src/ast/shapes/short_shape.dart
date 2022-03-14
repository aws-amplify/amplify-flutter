import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'short_shape.g.dart';

abstract class ShortShape
    implements SimpleShape, Built<ShortShape, ShortShapeBuilder> {
  factory ShortShape([void Function(ShortShapeBuilder) updates]) = _$ShortShape;
  ShortShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ShortShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.fromTraits(const [BoxTrait()]);
  }

  static const id = ShapeId.core('Short');

  @override
  ShapeType getType() => ShapeType.short;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.shortShape(this, parent);

  static Serializer<ShortShape> get serializer => _$shortShapeSerializer;
}

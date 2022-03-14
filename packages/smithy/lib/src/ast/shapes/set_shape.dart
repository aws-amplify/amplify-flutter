import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'set_shape.g.dart';

abstract class SetShape
    implements CollectionShape, Built<SetShape, SetShapeBuilder> {
  factory SetShape([void Function(SetShapeBuilder) updates]) = _$SetShape;
  SetShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  @override
  ShapeType getType() => ShapeType.set;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.setShape(this, parent);

  static Serializer<SetShape> get serializer => _$setShapeSerializer;
}

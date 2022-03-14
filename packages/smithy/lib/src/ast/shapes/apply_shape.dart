import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'apply_shape.g.dart';

abstract class ApplyShape
    implements Shape, Built<ApplyShape, ApplyShapeBuilder> {
  factory ApplyShape([void Function(ApplyShapeBuilder) updates]) = _$ApplyShape;
  ApplyShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ApplyShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  @override
  ShapeType getType() => ShapeType.apply;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      throw UnimplementedError();

  static Serializer<ApplyShape> get serializer => _$applyShapeSerializer;
}

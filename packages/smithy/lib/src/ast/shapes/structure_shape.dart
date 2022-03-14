import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'structure_shape.g.dart';

abstract class StructureShape
    implements NamedMembersShape, Built<StructureShape, StructureShapeBuilder> {
  factory StructureShape([void Function(StructureShapeBuilder) updates]) =
      _$StructureShape;
  StructureShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StructureShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  @override
  ShapeType getType() => ShapeType.structure;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.structureShape(this, parent);

  static Serializer<StructureShape> get serializer =>
      _$structureShapeSerializer;
}

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'operation_shape.g.dart';

abstract class OperationShape
    implements Shape, Built<OperationShape, OperationShapeBuilder> {
  factory OperationShape([void Function(OperationShapeBuilder) updates]) =
      _$OperationShape;
  OperationShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  ShapeRef? get input;
  ShapeRef? get output;
  BuiltList<ShapeRef> get errors;

  @override
  ShapeType getType() => ShapeType.operation;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.operationShape(this, parent);

  static Serializer<OperationShape> get serializer =>
      _$operationShapeSerializer;
}

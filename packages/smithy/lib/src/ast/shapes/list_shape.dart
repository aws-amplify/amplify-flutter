import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'list_shape.g.dart';

abstract class ListShape
    implements CollectionShape, Built<ListShape, ListShapeBuilder> {
  factory ListShape([void Function(ListShapeBuilder) updates]) = _$ListShape;
  ListShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  @override
  ShapeType getType() => ShapeType.list;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.listShape(this, parent);

  static Serializer<ListShape> get serializer => _$listShapeSerializer;
}

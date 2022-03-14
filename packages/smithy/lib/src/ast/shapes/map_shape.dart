import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'map_shape.g.dart';

abstract class MapShape implements Shape, Built<MapShape, MapShapeBuilder> {
  factory MapShape([void Function(MapShapeBuilder) updates]) = _$MapShape;
  MapShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MapShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  ShapeRef get key;
  ShapeRef get value;

  @override
  ShapeType getType() => ShapeType.map;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.mapShape(this, parent);

  static Serializer<MapShape> get serializer => _$mapShapeSerializer;
}

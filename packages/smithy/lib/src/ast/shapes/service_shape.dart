import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'service_shape.g.dart';

abstract class ServiceShape
    implements Shape, EntityShape, Built<ServiceShape, ServiceShapeBuilder> {
  factory ServiceShape([void Function(ServiceShapeBuilder) updates]) =
      _$ServiceShape;
  ServiceShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceShapeBuilder b) {
    b.shapeId = ShapeId.empty;
    b.traits = TraitMap.empty();
  }

  String? get version;

  // A map of Shape IDs to their rename
  BuiltMap<String, String> get rename;
  BuiltSet<ShapeRef> get errors;

  @override
  ShapeType getType() => ShapeType.service;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.serviceShape(this, parent);

  static Serializer<ServiceShape> get serializer => _$serviceShapeSerializer;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

part 'big_decimal_shape.g.dart';

abstract class BigDecimalShape
    implements SimpleShape, Built<BigDecimalShape, BigDecimalShapeBuilder> {
  factory BigDecimalShape([void Function(BigDecimalShapeBuilder) updates]) =
      _$BigDecimalShape;
  BigDecimalShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BigDecimalShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('BigDecimal');

  @override
  ShapeType getType() => ShapeType.bigDecimal;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.bigDecimalShape(this, parent);

  static Serializer<BigDecimalShape> get serializer =>
      _$bigDecimalShapeSerializer;
}

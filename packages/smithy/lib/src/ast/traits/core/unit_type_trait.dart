import 'package:smithy/ast.dart';

class UnitTypeTrait extends AnnotationTrait {
  const UnitTypeTrait() : super(id);

  const UnitTypeTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('unitType');
}

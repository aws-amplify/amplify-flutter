import 'package:smithy/ast.dart';

abstract class AnnotationTrait extends Trait<Map> {
  const AnnotationTrait(ShapeId shapeId)
      : super(shapeId, const <String, Object?>{});
}

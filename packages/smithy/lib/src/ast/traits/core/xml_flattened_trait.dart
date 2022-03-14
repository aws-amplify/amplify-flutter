import 'package:smithy/ast.dart';

class XmlFlattenedTrait extends AnnotationTrait {
  const XmlFlattenedTrait() : super(id);

  const XmlFlattenedTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('xmlFlattened');
}

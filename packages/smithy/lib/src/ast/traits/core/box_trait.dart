import 'package:smithy/ast.dart';

class BoxTrait extends AnnotationTrait {
  const BoxTrait() : super(id);

  const BoxTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'smithy.api', shape: 'box');
}

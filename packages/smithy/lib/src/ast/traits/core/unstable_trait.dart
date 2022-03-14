import 'package:smithy/ast.dart';

/// Marks a shape as unstable.
class UnstableTrait extends AnnotationTrait {
  const UnstableTrait() : super(id);

  const UnstableTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('unstable');
}

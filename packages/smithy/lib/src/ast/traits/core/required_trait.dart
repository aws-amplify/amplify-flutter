import 'package:smithy/ast.dart';

/// Indicates that a structure member is required.
class RequiredTrait extends AnnotationTrait {
  const RequiredTrait() : super(id);

  const RequiredTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('required');
}

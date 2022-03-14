import 'package:smithy/ast.dart';

/// Indicates that an operation / service supports unauthenticated access.
class OptionalAuthTrait extends AnnotationTrait {
  const OptionalAuthTrait() : super(id);

  const OptionalAuthTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('optionalAuth');
}

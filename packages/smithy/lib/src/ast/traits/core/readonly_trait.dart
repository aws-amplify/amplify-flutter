import 'package:smithy/ast.dart';

/// Indicates that an operation is read-only.
class ReadonlyTrait extends AnnotationTrait {
  const ReadonlyTrait() : super(id);

  const ReadonlyTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('readonly');
}

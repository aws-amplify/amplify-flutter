import 'package:smithy/ast.dart';

/// Specializes a structure as the input of a single operation.
class InputTrait extends AnnotationTrait {
  const InputTrait() : super(id);

  const InputTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('input');
}

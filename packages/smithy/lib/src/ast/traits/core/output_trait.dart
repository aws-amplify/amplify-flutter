import 'package:smithy/ast.dart';

/// Specializes a structure as the output of a single operation.
class OutputTrait extends AnnotationTrait {
  const OutputTrait() : super(id);

  const OutputTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('output');
}

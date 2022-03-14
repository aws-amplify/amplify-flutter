import 'package:smithy/ast.dart';

/// Shapes marked with the internal trait are meant only for internal use and
/// must not be exposed to customers.
class InternalTrait extends AnnotationTrait {
  const InternalTrait() : super(id);

  const InternalTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('internal');
}

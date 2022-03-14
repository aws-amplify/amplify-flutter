import 'package:smithy/ast.dart';

/// Indicates that the put lifecycle operation of a resource
/// can only be used to create a resource and cannot replace
/// an existing resource.
class NoReplaceTrait extends AnnotationTrait {
  const NoReplaceTrait() : super(id);

  const NoReplaceTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('noReplace');
}

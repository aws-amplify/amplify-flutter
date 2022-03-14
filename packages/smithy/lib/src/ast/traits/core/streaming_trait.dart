import 'package:smithy/ast.dart';

/// Indicates that the the data stored in the shape is very large and should
/// not be stored in memory, or that the size of the data stored in the
/// shape is unknown at the start of a request.
class StreamingTrait extends AnnotationTrait {
  const StreamingTrait() : super(id);

  const StreamingTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('streaming');

  /// Determines whether [shape] is an event stream.
  static bool isEventStream(Shape shape) =>
      shape.getType() == ShapeType.union && shape.isStreaming;
}

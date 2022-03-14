import 'package:smithy/ast.dart';

class DataPlaneTrait extends AnnotationTrait {
  const DataPlaneTrait() : super(id);

  const DataPlaneTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'aws.api', shape: 'dataPlane');
}

import 'package:smithy/ast.dart';

class S3UnwrappedXmlOutputTrait extends AnnotationTrait {
  const S3UnwrappedXmlOutputTrait() : super(id);

  const S3UnwrappedXmlOutputTrait.fromJson(Object? json) : super(id);

  static const id =
      ShapeId(namespace: 'aws.customizations', shape: 's3UnwrappedXmlOutput');
}

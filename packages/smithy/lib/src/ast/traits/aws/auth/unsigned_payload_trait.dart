import 'package:smithy/ast.dart';

/// Indicates that the payload of an operation is not to be signed.
class UnsignedPayloadTrait extends AnnotationTrait {
  const UnsignedPayloadTrait() : super(id);

  const UnsignedPayloadTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'aws.auth', shape: 'unsignedPayload');
}

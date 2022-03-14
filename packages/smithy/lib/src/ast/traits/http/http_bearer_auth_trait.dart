import 'package:smithy/ast.dart';

/// An auth scheme trait uses HTTP bearer auth.
class HttpBearerAuthTrait extends AnnotationTrait {
  const HttpBearerAuthTrait() : super(id);

  const HttpBearerAuthTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'smithy.api', shape: 'httpBearerAuth');
}

import 'package:smithy/ast.dart';

/// Indicates that the structure member represents the HTTP response
/// status code. This MAY differ from the HTTP status code provided
/// in the response.
class HttpResponseCodeTrait extends AnnotationTrait {
  const HttpResponseCodeTrait() : super(id);

  const HttpResponseCodeTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('httpResponseCode');
}
